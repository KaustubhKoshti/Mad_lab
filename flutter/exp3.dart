import 'package:flutter/material.dart'; 
 
void main() { 
  runApp(const FormApp()); 
} 
 
class FormApp extends StatelessWidget { 
  const FormApp({super.key}); 
 
  @override 
  Widget build(BuildContext context) { 
    return MaterialApp( 
      home: FormScreen(), 
    ); 
  } 
} 
 
class FormScreen extends StatefulWidget { 
  @override 
  State<FormScreen> createState() => _FormScreenState(); 
} 
 
class _FormScreenState extends State<FormScreen> { 
  final _formKey = GlobalKey<FormState>(); 
  final _nameController = TextEditingController(); 
 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar(title: const Text('Form Validator')), 
      body: Padding( 
        padding: const EdgeInsets.all(16.0), 
        child: Form( 
          key: _formKey, 
          child: Column( 
            children: [ 
              TextFormField( 
                controller: _nameController, 
                decoration: const InputDecoration(labelText: 'Enter your name'), 
                validator: (value) { 
                  if (value == null || value.isEmpty) { 
                    return 'Please enter name'; 
                  } 
                  return null; 
                }, 
              ), 
              const SizedBox(height: 20), 
              ElevatedButton( 
                onPressed: () { 
                  if (_formKey.currentState!.validate()) { 
                    ScaffoldMessenger.of(context) 
                        .showSnackBar(const SnackBar(content: Text('Form Submitted'))); 
                  } 
                }, 
                child: const Text('Submit'), 
              ) 
            ], 
          ), 
        ), 
      ), 
    ); 
  } 
}