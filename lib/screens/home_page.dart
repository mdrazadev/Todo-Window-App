import 'package:fluent_ui/fluent_ui.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    // Instead of Scaffold we use NavigationView
    // It required either pane or content attribute.
    // If you want to change the pane tab, you need to pass selected(int),
    // You can use onChanged method to change pane tab.

    return NavigationView(
      appBar: _getAppBar(),
      pane: NavigationPane(
        selected: selectedIndex,
        onChanged: onTabChange,
        header: const FlutterLogo(
          style: FlutterLogoStyle.horizontal,
          size: 100,
        ),
        items: [
          PaneItem(
            icon: const Icon(FluentIcons.to_do_logo_outline),
            title: const Text('Todo List'),
            body: const Text('Todo List'),
          ),
          PaneItem(
            icon: const Icon(FluentIcons.settings),
            title: const Text('Settings'),
            body: const Text('Settings'),
          ),
        ],
      ),
    );
  }

  _getAppBar() {
    return NavigationAppBar(
      title: const Text('Todo App'),
      automaticallyImplyLeading: false,
      actions: Padding(
        padding: const EdgeInsets.all(8.0),
        child: OutlinedButton(
          child: const Text('Create Task'),
          onPressed: () {},
        ),
      ),
    );
  }

  /// This method is to change the sidebar tab.
  onTabChange(int index){
    setState(() {
      selectedIndex = index;
    });
  }
}
