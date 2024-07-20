// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:empco/Core/Resources/Constants/Colors.dart';

class CirclesForCurrentPage extends StatelessWidget {
  final int index;
  const CirclesForCurrentPage({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
          height: 20,
          width: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(3, (ind) {
              return Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index == ind ? blue : white1),
              );
            }),
          )),
    );
  }
}
