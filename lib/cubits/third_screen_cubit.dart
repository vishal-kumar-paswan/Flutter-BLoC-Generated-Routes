import 'package:flutter_bloc/flutter_bloc.dart';

class ThirdScreenCubit extends Cubit<int> {
  ThirdScreenCubit() : super(0);
  void incrementCount() => emit(state + 1);
}
