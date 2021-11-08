import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NameInputWidget extends HookConsumerWidget {
  const NameInputWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final editController = useTextEditingController();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 16,
          ),
          child: TextField(
            controller: editController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
        TextButton.icon(
          onPressed: () {
            final text = editController.text;
            if (text.isEmpty) {
              return;
            }

            final snackBar = SnackBar(
              content: Text('Name is $text'),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          icon: const Icon(Icons.person),
          label: const Text('Name'),
        ),
      ],
    );
  }
}
