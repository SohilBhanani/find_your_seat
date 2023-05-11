
import 'package:flutter/material.dart';

import 'seat_layout.dart';

class Compartment extends StatelessWidget {
  const Compartment({super.key, required this.seats});
  final List<Map<String, dynamic>> seats;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SeatLayout.three(data: seats.getRange(0, 3).toList()),
            SeatLayout.one(data: [seats[6]])
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SeatLayout.threeBottom(data: seats.getRange(3, 6).toList()),
            SeatLayout.oneBottom(data: [seats[7]])
          ],
        )
      ],
    );
  }
}
