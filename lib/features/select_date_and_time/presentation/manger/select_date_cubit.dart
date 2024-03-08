import 'package:flutter_bloc/flutter_bloc.dart';

part 'select_date_state.dart';

class SelectDateCubit extends Cubit<SelectDateState> {
  SelectDateCubit() : super(SelectDateInitial());

  static SelectDateCubit of(context) => BlocProvider.of(context);

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
