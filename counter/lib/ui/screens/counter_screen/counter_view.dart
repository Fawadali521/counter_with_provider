import 'package:counter/ui/screens/counter_screen/counter_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);
  static const routeName = '/counter-view';
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterViewModel(),
      child: Consumer<CounterViewModel>(
        builder: (context, model, child) {
          return Scaffold(
            backgroundColor: model.backGroundColor(),
            appBar: AppBar(
              centerTitle: true,
              title: const Text(
                'Counter',
              ),
            ),
            //...
            //body
            //...
            body: Center(
              child: Text(
                '${model.counter}',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            //...
            // floatingActionButton
            //...
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                model.increment();
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          );
        },
      ),
    );
  }
}
