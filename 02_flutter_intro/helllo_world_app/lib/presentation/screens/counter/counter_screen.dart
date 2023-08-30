import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> 
{
  int clickCounter=0;
  String clickWordState='Click';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterApp'),
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter', style: const TextStyle(
                  fontSize: 150, 
                  fontWeight: FontWeight.w400
                )
              ),
              Text(clickWordState,style: const TextStyle(
                  fontSize: 30, 
                  fontWeight: FontWeight.w100
                ),
              )
            ],
          )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: ()
          {
            setState(() 
            {
              clickCounter++;
              clickWordState = clickCounter >9 ? 'Clicks' : 'Click';   
            });
          },
          child: const Icon(Icons.plus_one),
        ),
      );
  }
}