import 'counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'counter_provider.dart';

class CounterInfo extends ConsumerWidget {
  // final int counter;
  // final int resetCounter;

  // CounterInfo({required this.counter, required this.resetCounter});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watch = ref.watch(counterProvider);
    var size = 200.0;
    var max = 24;
    var fontSize =
        48.0 + (watch.counter >= max ? max : watch.counter).toDouble();
    var fontColor =
        watch.counter >= max ? Colors.red.shade900 : Colors.lightGreen.shade900;
    var style = Theme.of(context).textTheme.headline5?.copyWith(
          fontSize: fontSize,
          color: fontColor,
        );

    return SizedBox(
      width: size,
      height: size - 50.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${watch.counter}',
            style: style,
          ),
          SizedBox(
            width: size,
            child: ElevatedButton(
              onPressed: watch.reset,
              child: Text('RESET'),
            ),
          ),
        ],
      ),
    );
  }
}
