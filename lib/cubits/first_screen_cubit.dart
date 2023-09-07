import 'package:flutter_bloc/flutter_bloc.dart';

class FirstScreenCubit extends Cubit<int> {
  FirstScreenCubit() : super(0);
  void incrementCount() => emit(state + 1);
}
