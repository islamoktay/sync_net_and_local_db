import 'package:flutter/material.dart';

class ClearButton extends StatelessWidget {
  const ClearButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog<void>(
          context: context,
          builder: (context) => AlertDialog.adaptive(
            title: const Text('Which DB dou you want to delete?'),
            actions: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('All'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Waiting'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Success'),
              ),
            ],
          ),
        );
      },
      child: const Text('Clear'),
    );
  }
}
