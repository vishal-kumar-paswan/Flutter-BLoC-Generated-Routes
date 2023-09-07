import 'package:flutter_bloc/flutter_bloc.dart';

class SecondScreenCubit extends Cubit<int> {
  SecondScreenCubit() : super(0);
  void incrementCount() => emit(state + 1);
}
