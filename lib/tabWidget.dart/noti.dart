import 'package:flutter/material.dart';

class Noti extends StatelessWidget {
  final int count;
  final Function onTap;

  Noti({this.count, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              size: 30.0,
              color: Colors.yellow,
            ),
          ),
          count > 0
              ? Positioned(
                  top: 1.0,
                  right: 0.0,
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Text(
                      count.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    radius: 12.0,
                  ))
              : Text("")
        ],
      ),
    );
  }
}
