import 'package:flutter/material.dart';

import '../../../core/ui_helpers.dart';
import '../../data/coach_data.dart';
import 'seat_shape.dart';

class SeatLayout extends StatelessWidget {
  final int crossCount;
  final bool isBottom;
  final List<Map<String, dynamic>> data;
  // final Map<String, dynamic>? singleSeatData;
  const SeatLayout.three({
    super.key,
    required this.data,
  })  : crossCount = 3,
        isBottom = false;
  const SeatLayout.one({
    super.key,
    required this.data,
  })  : crossCount = 1,
        isBottom = false;
  const SeatLayout.threeBottom({
    super.key,
    required this.data,
  })  : crossCount = 3,
        isBottom = true;
  const SeatLayout.oneBottom({
    super.key,
    required this.data,
  })  : crossCount = 1,
        isBottom = true;

  @override
  Widget build(BuildContext context) {
    final width = screenWidth(context);
    // final height = screenHeight(context);
    return crossCount == 3
        ? Stack(
            alignment: Alignment.center,
            children: [
              SeatSupport.three(isBottom: isBottom),
              SizedBox(
                width: width * 0.39,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) {
                      return SeatShape(
                        seatNo: data[index]["seatNo"].toString(),
                        position: positionParser(data[index]['position']),
                        isFocussed: data[index]['isFocussed'],
                        isBottom: isBottom,
                      );
                    },
                  ),
                ),
              ),
            ],
          )
        : Stack(
            alignment: Alignment.center,
            children: [
              SeatSupport.single(isBottom: isBottom),
              SeatShape(
                  seatNo: data.last["seatNo"].toString(),
                  position: positionParser(data.last['position']),
                  isFocussed: data.last['isFocussed'],
                  isBottom: isBottom),
            ],
          );
  }
}
