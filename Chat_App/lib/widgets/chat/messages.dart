import 'package:firebase_auth/firebase_auth.dart';

import './message_bubble.dart';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Firestore.instance
          .collection('chat')
          .orderBy(
            'createdAt',
            descending: true,
          )
          .snapshots(),
      builder: (ctx, chatSnapshot) {
        if (chatSnapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        final chatDoc = chatSnapshot.data.documents;
        return ListView.builder(
          reverse: true,
          itemCount: chatDoc.length,
          itemBuilder: (ctx, index) => MessageBubble(
            chatDoc[index]['text'],
            chatDoc[index]['userId'] == FirebaseAuth.instance.currentUser.uid,
            chatDoc[index]['username'],
            chatDoc[index]['userImageUrl'],
            key: ValueKey(chatDoc[index].documentID),
          ),
        );
      },
    );
  }
}
