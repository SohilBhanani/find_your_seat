import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:search_your_seat/home/cubit/search_for_cubit.dart';

import '../../../core/ui_helpers.dart';

class SeatShape extends StatelessWidget {
  const SeatShape({
    super.key,
    required this.seatNo,
    required this.position,
    required this.isFocussed,
    required this.isBottom,
  });
  final String seatNo;
  final String position;
  final bool isFocussed;
  final bool isBottom;

  @override
  Widget build(BuildContext context) {
    final width = screenWidth(context);
    List<int> numberList = context.watch<SearchForCubit>().state;

    // if (!numberList.contains(int.parse(seatNo))) {
    //   context.read<NotFoundCubit>().notFound(int.parse(seatNo));
    // }

    List<Widget> seatDetails = [
      vertSpace1,
      Text(
        position,
        style: TextStyle(
            fontSize: 7,
            fontWeight: FontWeight.w400,
            color: numberList.contains(int.parse(seatNo))
                ? Colors.white
                : Colors.blue),
        textAlign: TextAlign.center,
      ),
      Text(
        seatNo,
        style: TextStyle(
            color: numberList.contains(int.parse(seatNo))
                ? Colors.white
                : Colors.blue),
      ),
      const Text(
        '',
        style: TextStyle(
          fontSize: 7,
        ),
        textAlign: TextAlign.center,
      ),
      vertSpace1
    ];

    return Container(
      margin: const EdgeInsets.all(1.5),
      height: width * 0.12,
      width: width * 0.12,
      decoration: BoxDecoration(
        color: numberList.contains(int.parse(seatNo))
            ? Colors.blue[300]
            : Colors.blue[50],
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: isBottom ? seatDetails.reversed.toList() : seatDetails,
      ),
    );
  }
}

class SeatSupport extends StatelessWidget {
  final double lengthMultiple;

  const SeatSupport.three({
    super.key,
    required this.isBottom,
  }) : lengthMultiple = 0.39;
  const SeatSupport.single({
    super.key,
    required this.isBottom,
  }) : lengthMultiple = 0.14;

  final bool isBottom;

  @override
  Widget build(BuildContext context) {
    final width = screenWidth(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // vertSpace15,
        Visibility(
          visible: !isBottom,
          maintainState: true,
          // maintainSemantics: true,
          maintainSize: true,
          maintainAnimation: true,
          child: Container(
            height: width * 0.06,
            width: width * lengthMultiple,
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ),
        vertSpace15,
        Visibility(
          visible: isBottom,
          maintainState: true,
          // maintainSemantics: true,
          maintainAnimation: true,
          maintainSize: true,
          child: Container(
            height: width * 0.06,
            width: width * lengthMultiple,
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ),
        // vertSpace15
      ],
    );
  }
}
