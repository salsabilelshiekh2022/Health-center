part of 'doctor_category_cubit.dart';

sealed class DoctorCategoryState {}

final class DoctorCategoryInitial extends DoctorCategoryState {}

final class ShowGridView extends DoctorCategoryState {}

final class ShowList extends DoctorCategoryState {}
