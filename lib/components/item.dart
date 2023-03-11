import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:toku_app/models/Number.dart';

class Items extends StatelessWidget {
  const Items({super.key, required this.number});
  final Numbers number;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image.asset(number.image),
          Column(
            children: [
              Text(
                number.jpName,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                number.enNme,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
