import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
  int clickCounter = 0;
  String clickWordState = 'Click';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CounterFunctionApp'),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            ),
          ],
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter',
                style: const TextStyle(
                    fontSize: 150, fontWeight: FontWeight.w400)),
            Text(
              clickCounter == 0 ? 'clicks' : 'click',
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w100),
            )
          ],
        )),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomActionButton(
              icon: Icons.refresh_outlined,
              onPresed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            ),
            const SizedBox(height: 10),
            CustomActionButton(
              icon: Icons.plus_one,
              onPresed: () {
                setState(() {
                  clickCounter++;
                });
              },
            ),
            const SizedBox(height: 10),
            CustomActionButton(
              icon: Icons.exposure_minus_1_outlined,
              onPresed: () {
                setState(() {
                  if (clickCounter == 0) return;
                  clickCounter--;
                });
              },
            )
          ],
        ));
  }
}

class CustomActionButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPresed;

  const CustomActionButton({
    super.key,
    required this.icon,
    this.onPresed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPresed,
      child: Icon(icon),
    );
  }
}
