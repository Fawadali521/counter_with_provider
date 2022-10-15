import 'package:counter/core/constant/ktheme_style.dart';
import 'package:counter/ui/screens/counter_screen/counter_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => KThemeStyle(),
        child: Consumer<KThemeStyle>(
          builder: (context, model, child) {
            return MaterialApp(
              theme: ThemeData(
                appBarTheme: model.kAppBar,
                textTheme: Theme.of(context).textTheme.copyWith(
                      bodyText1: model.kBodyText1,
                      bodyText2: model.kBodyText1,
                    ),
                primarySwatch: Colors.purple,
                colorScheme: model.kColorScheme,
              ),
              home: const CounterView(),
            );
          },
        ));
  }
}
