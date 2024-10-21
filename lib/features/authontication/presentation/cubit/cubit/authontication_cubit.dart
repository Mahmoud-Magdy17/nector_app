import 'package:bloc/bloc.dart';

part 'authontication_state.dart';

class AuthonticationCubit extends Cubit<AuthonticationState> {
  AuthonticationCubit() : super(AuthonticationInitial());
  String countryCode = '+20';
  String? phoneNumber = '0';
}
