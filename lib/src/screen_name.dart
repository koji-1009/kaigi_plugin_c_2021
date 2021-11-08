import 'package:flutter/material.dart';
import 'package:kaigi_plugin_c_2021/src/name_input_widget.dart';

class ScreenName extends StatelessWidget {
  const ScreenName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text('This is first screen'),
          NameInputWidget(),
        ],
      ),
    );
  }
}
