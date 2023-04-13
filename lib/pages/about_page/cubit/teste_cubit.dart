import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'teste_state.dart';
part 'teste_cubit.freezed.dart';

class TesteCubit extends Cubit<TesteState> {
  TesteCubit() : super(TesteState.initial());
}
