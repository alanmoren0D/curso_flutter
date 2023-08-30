import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> 
{
  int clickCounter=0;
  String clickWordState='Click';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterFunctionApp'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded), 
            onPressed: () {  
              setState(() 
              {
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
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
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
            const SizedBox(height: 10),
            FloatingActionButton(
              onPressed: ()
              {
                setState(() 
                {
                  clickCounter--;
                  clickWordState = clickCounter >9 ? 'Clicks' : 'Click';   
                });
              },
              child: const Icon(Icons.exposure_minus_1_outlined),
            )
          ],
        )
      );
  }
}