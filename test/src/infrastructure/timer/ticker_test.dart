import 'package:crackd_timer/src/infrastructure/timer/ticker.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Ticker', () {
    late Ticker ticker;

    setUp(() {
      ticker = const Ticker();
    });

    test(
      'tick stream emits correct countdown value',
      () {
        const ticks = 5;
        final expectedValues = [4, 3, 2, 1, 0];

        final tickStream = ticker.tick(ticks: ticks);

        expect(tickStream, emitsInOrder(expectedValues));
      },
    );

    test('tick stream completes after specified number of ticks', () {
      const ticks = 5;
      final stream = ticker.tick(ticks: ticks);

      expectLater(
        stream,
        emitsInOrder([for (var i = ticks - 1; i >= 0; i--) i, emitsDone]),
      );
    });
  });
}
