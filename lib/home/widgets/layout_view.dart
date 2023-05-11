import 'package:flutter/material.dart';
import 'package:search_your_seat/core/ui_helpers.dart';
import 'package:search_your_seat/home/data/coach_data.dart';

import 'seats/compartment.dart';
import 'seats/seat_layout.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        // itemCount: coachData.length ~/ 2,
        itemCount: coachData.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Compartment(seats: coachData[index]['seats']),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return vertSpace5;
        },
      ),
    );
  }
}
