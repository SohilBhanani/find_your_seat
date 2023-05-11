import 'package:flutter_bloc/flutter_bloc.dart';

class SearchEnableCubit extends Cubit<bool> {
  SearchEnableCubit() : super(false);
  void isEnabled(bool e) => emit(e);
}
