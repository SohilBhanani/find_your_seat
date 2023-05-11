import 'package:flutter_bloc/flutter_bloc.dart';

class SearchForCubit extends Cubit<List<int>> {
  SearchForCubit() : super([]);
  void searchFor(List<int> query) => emit([...query]);
}
