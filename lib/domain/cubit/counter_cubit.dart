import 'package:bloc/bloc.dart';

part 'counter_state.dart';

/// Toda sua Regra de negocio ou integração com o repository e o presantition.
///
/// Será aqui, poderá ser bloc, RiverPod, Mobx o que vc dominar.
///
/// Esta camada domain, visualizará seu repository e seu presantiton somente isso.


class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);

  void decrement() => emit(state - 1);
}
