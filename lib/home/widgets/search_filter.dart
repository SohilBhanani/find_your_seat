import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:search_your_seat/core/ui_helpers.dart';
import 'package:search_your_seat/home/cubit/search_for_cubit.dart';
import 'package:search_your_seat/home/data/coach_data.dart';

import '../cubit/search_enable_cubit.dart';

class SearchFilter extends StatefulWidget {
  const SearchFilter({super.key});

  @override
  State<SearchFilter> createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
  final controller = TextEditingController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final FocusScopeNode currentFocus = FocusScope.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                enabledBorder: myBorder,
                focusedBorder: myBorder,
              ),
              onChanged: (_) {
                if (controller.text.isNotEmpty) {
                  context.read<SearchEnableCubit>().isEnabled(true);
                } else {
                  context.read<SearchEnableCubit>().isEnabled(false);
                }
              },
            ),
          ),
          SizedBox(
              height: 55,
              child: BlocBuilder<SearchEnableCubit, bool>(
                builder: (context, state) {
                  return ElevatedButton(
                      onPressed: state
                          ? () {
                              if (!currentFocus.hasPrimaryFocus) {
                                currentFocus.unfocus();
                              }
                              List<int> numberList = controller.text
                                  .split(',')
                                  .map((e) => int.parse(e))
                                  .toList();
                              log(numberList.toString());

                              context
                                  .read<SearchForCubit>()
                                  .searchFor(numberList);
                            }
                          : null,
                      child: const Icon(Icons.search));
                },
              ))
        ],
      ),
    );
  }
}
