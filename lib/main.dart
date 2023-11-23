import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login", style: TextStyle(fontSize: 22, fontStyle: FontStyle.italic, color: Colors.white),),
          backgroundColor: Colors.black,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.info_outline))
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                width: 1000,
                height: 250,
                color: Colors.black,
              ),
              SizedBox(height: 75,),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  maxLines: 1,
                  maxLength: 50,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                        color: Colors.black, width: 1
                      )
                    ) ,
                    labelText: "Email",
                    hintText: "Masukkan Email Kamu",
                    prefixIcon: Icon(Icons.email_outlined)
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25)
                    ),
                    labelText: "Password",
                    hintText: "Masukkan Password Kamu",
                    prefixIcon: Icon(Icons.key_outlined), 
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 28, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Forgot Your Password?")
                  ],
                ),
              )
            ],
          ),
        )
      )
    );
  }
}