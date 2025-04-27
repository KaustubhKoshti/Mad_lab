import 'package:flutter/material.dart'; 
 
void main() { 
  runApp(const CounterApp()); 
} 
 
class CounterApp extends StatefulWidget { 
  const CounterApp({super.key}); 
 
  @override 
  State<CounterApp> createState() => _CounterAppState(); 
} 
 
class _CounterAppState extends State<CounterApp> { 
  int counter = 0; 
 
  void increment() { 
    setState(() { 
      counter++; 
    }); 
  } 
 
  void decrement() { 
    setState(() { 
      counter--; 
    }); 
  } 
 
  @override 
  Widget build(BuildContext context) { 
    return MaterialApp( 
      home: Scaffold( 
        appBar: AppBar(title: const Text('Counter App')), 
        body: Center( 
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [ 
              Text('Counter: $counter', style: const TextStyle(fontSize: 24)), 
              const SizedBox(height: 20), 
              Row( 
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [ 
                  ElevatedButton(onPressed: increment, child: const Text('Increment')), 
                  const SizedBox(width: 10), 
                  ElevatedButton(onPressed: decrement, child: const Text('Decrement')), 
                ], 
              ), 
            ], 
          ), 
        ), 
      ), 
    ); 
  } 
} 
