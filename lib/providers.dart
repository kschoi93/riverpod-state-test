import 'package:counter/state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'providers.g.dart';


@riverpod
class Counter extends _$Counter {
  /// Classes annotated by `@riverpod` **must** define a [build] function.
  /// This function is expected to return the initial state of your shared state.
  /// It is totally acceptable for this function to return a [Future] or [Stream] if you need to.
  /// You can also freely define parameters on this method.
  @override
  AuthState build() {
    print('tttttttttttttttttt');
    return AuthState();}

  void increment() {
    print(state.num);
    int num = state.num+1;
    state = state.copyWith(num: num);
  }
}

@riverpod
Counter count(CountRef ref) {
  final state = ref.watch(counterProvider.notifier);
  return state;
}