import 'package:flutter/material.dart';
import 'package:ride_along/chat_page.dart';
import 'package:ride_along/main_page.dart';
import 'package:ride_along/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "RobotoMono",
        backgroundColor: const Color(0xddB6EFDA),
        accentColor: const Color(0xffB6EFDA),
        bottomAppBarColor: Colors.green[300],
        textTheme: const TextTheme(
          headline1: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
          headline2: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
        ),
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //B6EFDA Color.fromRGBO(0xb6, 0xef, 0xda, 0.5)
      floatingActionButton: MaterialButton(
        onPressed: ()=> {},
        child: Container(
          height: 50,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color:Colors.blue,

          ),
        ),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).bottomAppBarColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) => setState(
              () {
            _selectedIndex = index;
          },
        ),
      ),
      body: _pages[_selectedIndex]//LogInScreen()
    );
  }
}

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: TextEditingController(),
            decoration: const InputDecoration(
              prefix: Icon(Icons.alternate_email_sharp)
            )
          )
        ],
      ),
    );
  }
}


List<Widget>_pages=[const ChatPage(), const MainPage(), const SettingsPage()];






