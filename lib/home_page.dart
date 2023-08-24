import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scroll Animation"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        controller: controller,
        itemCount: 50,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Title $index'),
            subtitle: Text("This is a subtitle $index"),
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.green,
            child: const Icon(Icons.arrow_downward_outlined),
            onPressed: () {
              controller.animateTo(
                controller.position.maxScrollExtent,
                duration: const Duration(seconds: 2),
                curve: Curves.bounceInOut,
              );
            },
          ),
          const SizedBox(height: 20),
          FloatingActionButton(
            backgroundColor: Colors.green,
            child: const Icon(Icons.arrow_upward_outlined),
            onPressed: () {
              controller.animateTo(
                controller.position.minScrollExtent,
                duration: const Duration(seconds: 3),
                curve: Curves.bounceIn,
              );
            },
          ),
        ],
      ),
    );
  }
}
