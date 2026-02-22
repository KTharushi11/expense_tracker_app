import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        builder: DevicePreview.appBuilder,
        home: ExpenseApp(),
      ),
    ),
  );
}

class ExpenseApp extends StatelessWidget {
  const ExpenseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense Tracker',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expense Tracker"),
        centerTitle: true,
      ),

      body: Column(
        children: [

          // Total balance card
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Column(
              children: [
                Text(
                  "Total Balance",
                  style: TextStyle(color: Colors.white70, fontSize: 18),
                ),
                SizedBox(height: 10),
                Text(
                  "Rs. 0.00",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            "No expenses added yet",
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}