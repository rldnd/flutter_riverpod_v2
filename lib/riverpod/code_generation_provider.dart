import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'code_generation_provider.g.dart';

@riverpod
class GStateNotifier extends _$GStateNotifier {
  @override
  int build() {
    return 0;
  }

  increment() {
    state++;
  }

  decrement() {
    state--;
  }
}

@riverpod
Future<int> futureProvider(FutureProviderRef ref) async {
  return 0;
}

@riverpod
Stream<int> testStream(TestStreamRef ref) async* {
  for (int i = 0; i < 10; i++) {
    yield i;
  }
}
