import 'CounterBloc.dart';

import 'CounterEvent.dart';


void main(List<String> args) async {
  final cb = CounterBloc();

  print(cb.counter);

  cb.counterEventSink.add(IncrementEvent());
  cb.counterEventSink.add(IncrementEvent());

  await for (var value in cb.counter) {
    print(value);
  }
}
