import 'package:flutter_bloc/flutter_bloc.dart';

part 'doctor_category_state.dart';

class DoctorCategoryCubit extends Cubit<DoctorCategoryState> {
  DoctorCategoryCubit() : super(DoctorCategoryInitial());

  static DoctorCategoryCubit of(context) => BlocProvider.of(context);

  bool showGridView = false;

  showGrid() {
    if (showGridView) {
      showGridView = false;

      emit(ShowList());
    } else {
      showGridView = true;

      emit(ShowGridView());
    }
  }
}
