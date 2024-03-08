import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/database/cache/cache_helper.dart';
import '../../../../core/services/service_locator.dart';

part 'global_state.dart';

class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit() : super(GlobalInitial());

  bool isArabic = false;

  static GlobalCubit of(context) => BlocProvider.of(context);

  changeLang() {
    if (isArabic) {
      isArabic = false;
      getIt<CacheHelper>().cacheData(key: "lang", value: 'en');
      //print('en');
      emit(EnglishLang());
    } else {
      isArabic = true;
      getIt<CacheHelper>().cacheData(key: "lang", value: 'ar');
      // print('ar');
      emit(ArabicLang());
    }
  }
}
