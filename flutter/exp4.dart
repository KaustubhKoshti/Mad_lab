import 'package:flutter/material.dart'; 
import 'package:provider/provider.dart'; 
 
void main() { 
  runApp(ChangeNotifierProvider( 
    create: (context) => Counter(), 
    child: const ProviderApp(), 
  )); 
} 
 
class Counter with ChangeNotifier { 
  int value = 0; 
  void increment() { 
    value++; 
    notifyListeners(); 
  } 
} 
 
class ProviderApp extends StatelessWidget { 
  const ProviderApp({super.key}); 
 
  @override 
  Widget build(BuildContext context) { 
    return MaterialApp( 
      home: Scaffold( 
        appBar: AppBar(title: const Text('Provider Example')), 
        body: Center( 
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [ 
              Consumer<Counter>( 
                builder: (context, counter, _) => 
                    Text('Counter: ${counter.value}', style: const TextStyle(fontSize: 24)), 
              ), 
              ElevatedButton( 
                onPressed: () => context.read<Counter>().increment(), 
                child: const Text('Increment'), 
              ) 
            ], 
          ), 
        ), 
      ), 
    ); 
  } 
} 