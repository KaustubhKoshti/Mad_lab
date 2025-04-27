import 'package:flutter/material.dart'; 
 
void main() { 
  runApp(const AnimationApp()); 
} 
 
class AnimationApp extends StatelessWidget { 
  const AnimationApp({super.key}); 
 
  @override 
  Widget build(BuildContext context) { 
    return MaterialApp( 
      home: AnimatedScreen(), 
    ); 
  } 
} 
 
class AnimatedScreen extends StatefulWidget { 
  @override 
  State<AnimatedScreen> createState() => _AnimatedScreenState(); 
} 
 
class _AnimatedScreenState extends State<AnimatedScreen> { 
  double size = 100.0; 
 
  void animate() { 
    setState(() { 
      size = size == 100 ? 200 : 100; 
    }); 
  } 
 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar(title: const Text('Simple Animation')), 
      body: Center( 
        child: GestureDetector( 
          onTap: animate, 
          child: AnimatedContainer( 
            width: size, 
            height: size, 
            color: Colors.blue, 
            duration: const Duration(seconds: 1), 
            curve: Curves.easeInOut, 
          ), 
        ), 
      ), 
} 
); 
}