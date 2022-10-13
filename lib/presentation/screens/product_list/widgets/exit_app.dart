import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExitApp extends StatelessWidget {
  const ExitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Exit Application?',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  child: const Text('Yes'),
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                ),
              ),
              const SizedBox(width: 25),
              Expanded(
                child: OutlinedButton(
                  child: const Text('No'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
