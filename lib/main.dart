import 'package:flutter/material.dart';
import 'package:task_terk/pages/signin_page.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:widget_circular_animator/widget_circular_animator.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: WelcomePage(toggleTheme: toggleTheme, isDarkMode: isDarkMode),
    );
  }
}
class WelcomePage extends StatelessWidget {
  final VoidCallback toggleTheme;
  final bool isDarkMode;

  const WelcomePage({super.key, required this.toggleTheme, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode),
            onPressed: toggleTheme,
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/backmain.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome To The\n TASKTERK',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              WidgetCircularAnimator(
                size: 145,
                innerIconsSize: 3,
                outerIconsSize: 3,
                innerAnimation: Curves.easeInOut,
                outerAnimation: Curves.easeInOut,
                innerColor: Colors.white,
                outerColor: Colors.blueAccent,
                innerAnimationSeconds: 5,
                outerAnimationSeconds: 5,
                child: Container(
                  height: 145,
                  width: 145,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/img/logomainn.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(72.5),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignInPage()),
                  );
                },
                child: const Text(
                  'Let\'s Start',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 127, 253),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}