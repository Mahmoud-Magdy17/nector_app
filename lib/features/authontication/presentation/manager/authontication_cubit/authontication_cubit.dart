import 'package:bloc/bloc.dart';

part 'authontication_state.dart';

class AuthonticationCubit extends Cubit<AuthonticationState> {
  AuthonticationCubit() : super(AuthonticationInitial());
  String countryCode = '+20';
  String? phoneNumber = '0';
  String location = "not set";
  String fourDigitsCode = "----";
  void setLocation(selectedLocation) {
    location = selectedLocation;
    emit(SelectLocationDoneState());
  }
}
