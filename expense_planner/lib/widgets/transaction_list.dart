import 'package:flutter/material.dart';

import '../models/transaction.dart';
import './tansaction_item.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deletetx;

  TransactionList(this.transactions, this.deletetx);

  @override
  Widget build(BuildContext context) {
    print('build() mytransectionlist');
    return transactions.isEmpty
        ? LayoutBuilder(
            builder: (ctx, constraints) {
              return Column(
                children: [
                  Text(
                    'No Transactions Yet!',
                    style: Theme.of(context).textTheme.title,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: constraints.maxHeight * 0.6,
                      child: Image.asset(
                        'assets/images/waiting.png',
                        fit: BoxFit.cover,
                      )),
                ],
              );
            },
          )
        : ListView(
            children: transactions
                .map((tx) => TransactionItem(
                  key: ValueKey(tx.id),
                      transaction: tx,
                      deletetx: deletetx,
                    ))
                .toList(),
          );
  }
}
