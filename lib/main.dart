import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'domain/cubit/counter_cubit.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends MaterialApp {
  const CounterApp({Key? key})
      : super(
            key: key,
            home: const CounterPage(),
            debugShowCheckedModeBanner: false);
}

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => CounterCubit(),
        child: CounterView(),
      );
}

class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text('$state', style: textTheme.headline2);
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => context.read<CounterCubit>().increment(),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () => context.read<CounterCubit>().decrement(),
          ),
        ],
      ),
    );
  }
}
