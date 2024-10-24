part of 'authontication_cubit.dart';

sealed class AuthonticationState {}

final class AuthonticationInitial extends AuthonticationState {}
final class SelectLocationDoneState extends AuthonticationState {}
