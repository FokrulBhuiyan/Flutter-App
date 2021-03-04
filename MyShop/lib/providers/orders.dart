import './cart.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class OrderItem {
  final String id;
  final double amount;
  final List<CartItem> products;
  final DateTime dateTime;

  OrderItem({
    @required this.id,
    @required this.amount,
    @required this.products,
    @required this.dateTime,
  });
}

class Orders with ChangeNotifier {
  List<OrderItem> _orders = [];
  final String authToken;
  final String userId;

Orders(this.authToken, this.userId, this._orders);

  List<OrderItem> get orders {
    return [..._orders];
  }

  Future<void> fetchAndSetOrders() async {
    final url = 'https://flutter-update-301ed.firebaseio.com/orders/$userId.json?auth=$authToken';
      final response = await http.get(url);
      final List<OrderItem> loadedOrder = [];
      final extendedData = json.decode(response.body) as Map<String, dynamic>;
      if (extendedData == null) {
        return;
      }
      extendedData.forEach((orderId, orderItems) {
        loadedOrder.add(
          OrderItem(
            id: orderId,
            amount: orderItems['amount'],
            products: (orderItems['products'] as List<dynamic>)
                .map(
                  (item) => CartItem(
                    id: item['id'],
                    title: item['title'],
                    price: item['price'],
                    quantity: item['quantity'],
                  ),
                )
                .toList(),
            dateTime: DateTime.parse(orderItems['dateTime']),
          ),
        );
      });
      _orders = loadedOrder.reversed.toList();
      notifyListeners();

  }

  Future<void> addOrder(List<CartItem> cartProducts, double total) async {
    final url = 'https://flutter-update-301ed.firebaseio.com/orders/$userId.json?auth=$authToken';
    final timestamp = DateTime.now();
    try {
      final response = await http.post(url,
          body: json.encode({
            'amount': total,
            'products': cartProducts
                .map((cp) => {
                      'id': cp.id,
                      'title': cp.title,
                      'price': cp.price,
                      'quantity': cp.quantity,
                    })
                .toList(),
            'dateTime': timestamp.toIso8601String(),
          }));
      _orders.insert(
        0,
        OrderItem(
          id: json.decode(response.body)['name'],
          amount: total,
          products: cartProducts,
          dateTime: timestamp,
        ),
      );
      notifyListeners();
    } catch (error) {
      print(error);
      throw error;
    }
  }
}
