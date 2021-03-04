import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String message;
  final bool isMe;
  final String userImage;
  final String username;
  final Key key;

  MessageBubble(this.message, this.isMe, this.username,this.userImage, {this.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        SizedBox(width: 3,),
        if(!isMe)CircleAvatar(backgroundImage: NetworkImage(userImage),) ,
        Container(
          decoration: BoxDecoration(
            color: isMe ? Colors.grey[300] : Theme.of(context).accentColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomLeft: !isMe ? Radius.circular(0) : Radius.circular(12),
              bottomRight: isMe ? Radius.circular(0) : Radius.circular(12),
            ),
          ),
          width: 180,
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 16,
          ),
          margin: EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 8,
          ),
          child: Column(
            crossAxisAlignment: isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Text(
                username,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: isMe
                      ? Colors.black
                      : Theme.of(context).accentTextTheme.headline1.color,
                ),
              ),
              Text(
                message,
                style: TextStyle(
                  color: isMe
                      ? Colors.black
                      : Theme.of(context).accentTextTheme.headline1.color,
                ),
                textAlign: isMe? TextAlign.end : TextAlign.start,
              ),
            ],
          ),
        ),
        if(isMe)CircleAvatar(backgroundImage: NetworkImage(userImage),) ,
        SizedBox(width: 3,),
      ],
    );
  }
}
