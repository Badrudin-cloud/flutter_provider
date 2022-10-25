import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import '../providers/counter_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Counter counter = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter app ${counter.count}'),
      ),
      body: Consumer<Counter>(
        builder: (context, value, child) => Center(
          child: Text(value.count.toString()),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () => counter.increment(),
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () => counter.resetCount(),
            child: Text('0'),
          ),
          FloatingActionButton(
            onPressed: () => counter.decrement(),
            child: Text('-'),
          )
        ],
      ),
    );
  }
}
