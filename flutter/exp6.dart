import 'package:flutter/material.dart'; 
 
void main() { 
  runApp(const RoutingApp()); 
} 
 
class RoutingApp extends StatelessWidget { 
  const RoutingApp({super.key}); 
 
  @override 
  Widget build(BuildContext context) { 
    return MaterialApp( 
      home: NavigationHome(), 
    ); 
  } 
} 
 
class NavigationHome extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar(title: const Text('Home Page')), 
      body: Center( 
        child: ElevatedButton( 
          onPressed: () { 
            Navigator.push(context, MaterialPageRoute( 
              builder: (context) => SecondPage(data: "Hello from Home!"), 
            )); 
          }, 
          child: const Text('Go to Second Page'), 
        ), 
      ), 
    ); 
  } 
} 
 
class SecondPage extends StatelessWidget { 
  final String data; 
  const SecondPage({super.key, required this.data}); 
 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar(title: const Text('Second Page')), 
body: Center(child: Text(data, style: const TextStyle(fontSize: 24))), 
); 
} 
}
