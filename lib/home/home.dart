import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:search_your_seat/core/ui_helpers.dart';
import 'package:search_your_seat/home/widgets/search_filter.dart';

import 'cubit/search_for_cubit.dart';
import 'widgets/layout_view.dart';
import 'widgets/seats/seat_layout.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = screenWidth(context);
    final FocusScopeNode currentFocus = FocusScope.of(context);
    return GestureDetector(
      onTap: () {
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              "Seat Finder",
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.blue[300],
                  fontWeight: FontWeight.bold),
            )),
        body: Column(
          children: const [
            SearchFilter(),
            LayoutView(),
          ],
        ),
      ),
    );
  }
}
