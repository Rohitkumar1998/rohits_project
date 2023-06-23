import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:rohits_project/ui_update_demo.dart';

class Demo_buttton2 extends StatefulWidget {
  const Demo_buttton2({super.key});

  @override
  State<Demo_buttton2> createState() => _Demo_buttton2State();
}

class _Demo_buttton2State extends State<Demo_buttton2> {
  var _isUnderstood = false;
  @override
  Widget build(BuildContext context) {
    print('Demobutton BUILD called');
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  _isUnderstood = false;
                });
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _isUnderstood = true;
                });
              },
              child: const Text('Yes'),
            ),
          ],
        ),
        if (_isUnderstood) const Text('Awesome!'),
      ],
    );
  }
}
