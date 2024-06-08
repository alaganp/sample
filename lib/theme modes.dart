import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
class modes extends StatefulWidget {
  const modes({super.key});



  @override
  State<modes> createState() => _modesState();
}

class _modesState extends State<modes> {
  late ThemeData _lightTheme;
  late ThemeData _darkTheme;
  late ThemeMode _themeMode;

  @override
  void initState() {
    super.initState();
    _lightTheme = ThemeData.light();
    _darkTheme = ThemeData.dark();
    _themeMode = ThemeMode.system;
  }

  void _toggleTheme(bool isDarkMode) async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _themeMode = isDarkMode ? ThemeMode.dark : ThemeMode.light;
      prefs.setBool('isDarkMode', isDarkMode);
    });
  }


  @override
  Widget build(BuildContext context) {
    bool isDarkMode = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme Switcher"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isDarkMode ? 'Dark Mode' : 'Light Mode',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Switch(
              value: isDarkMode,
              onChanged: (value) {
                _toggleTheme(value);
              },
            ),
          ],
        ),
      ),
    );

  }
}





