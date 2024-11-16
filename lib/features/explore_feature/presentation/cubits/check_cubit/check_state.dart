part of 'check_cubit.dart';

@immutable
sealed class CheckState {}

final class CheckCubitInitial extends CheckState {}
final class CheckCubitChecked extends CheckState {}
