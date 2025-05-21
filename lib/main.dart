import 'package:fluent_ui/fluent_ui.dart';
import 'package:todo_app/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // instead of MaterialApp we use FlutentApp
    return FluentApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo App',
      theme: FluentThemeData(
        accentColor: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
