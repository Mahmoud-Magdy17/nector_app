import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:nector_app/features/explore/data/enums/filters_enum.dart';
import 'package:nector_app/features/explore/data/models/filter_models/filter.dart';

part 'check_state.dart';

class CheckCubit extends Cubit<CheckState> {
  CheckCubit() : super(CheckCubitInitial());
  Filter filter = Filter();
  void check(FilterType filter) {
    this.filter.checkFilter(filter);
    emit(CheckCubitChecked());
  }

  bool getFilter(FilterType filter) {
    return this.filter.getFilter(filter);
  }
}
