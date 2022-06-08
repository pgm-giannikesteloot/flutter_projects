import 'widgets/color_bottom_app_bar.dart';
import 'widgets/color_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'extra/counter_provider.dart';
import 'extra/counter_info.dart';
import 'widgets/grid_view.dart';

class HomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watch = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Gianni Kesteloot - M2STAT2'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ColorGridView(),
          ),
          ColorBottomAppBar(),
        ],
      )),
    );
  }
}
