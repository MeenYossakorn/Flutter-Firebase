import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_screen.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final List<PageViewModel> pages = [
    PageViewModel(
      title: 'It is an application that makes using the library easier',
      body: ''' 
  It brings together various features within the library such as borrowing, reserving, searching and other services.

      ''',
      footer: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 50,
            width: 300,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                elevation: 1,
              ),
              onPressed: () {},
              child: const Text('Read more details'),
            ),
          ),
        ],
      ),
      image: Image.network('assets/images/lib1.png'),
      decoration: const PageDecoration(
          imagePadding: EdgeInsets.all(1.0),
          pageColor: Color.fromARGB(255, 163, 206, 255),
          titleTextStyle: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          )),
    ),

////////////////////////////////////////////////////////////////////////////////

    PageViewModel(
      title: 'Giving advice from officials',
      body: '''
There are also many news and various activities announced.
''',
      footer: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 50,
            width: 300,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                elevation: 1,
              ),
              onPressed: () {},
              child: const Text('Read more details'),
            ),
          ),
        ],
      ),
      image: Image.network('assets/images/lib2.png'),
      decoration: const PageDecoration(
          imagePadding: EdgeInsets.all(1.0),
          pageColor: Color.fromARGB(255, 163, 206, 255),
          titleTextStyle: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          )),
    ),

////////////////////////////////////////////////////////////////////////////////

    PageViewModel(
      title: 'Can be used through various online platforms.',
      body:
          'Both in the application and website, this application is for KMUTNB students only.',
      footer: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 50,
            width: 300,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                elevation: 1,
              ),
              onPressed: () {},
              child: const Text(
                'Read more details',
              ),
            ),
          ),
        ],
      ),
      image: Image.network(
        'assets/images/lib3.png',
      ),
      decoration: const PageDecoration(
          imagePadding: EdgeInsets.all(1.0),
          pageColor: Color.fromARGB(255, 163, 206, 255),
          titleTextStyle: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          )),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 110, 228),
        title: const Text(
          ' Library Application ',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontFamily: 'poppins',
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Color.fromARGB(255, 163, 206, 255),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Expanded(
              child: IntroductionScreen(
                pages: pages,
                showSkipButton: true,
                skip: Container(
                  child: const Text(
                    'Skip',
                    style: TextStyle(color: Color.fromARGB(255, 0, 110, 228)),
                  ),
                ),
                showDoneButton: true,
                done: Container(
                  child: const Text(
                    'Finish',
                    style: TextStyle(color: Color.fromARGB(255, 0, 110, 228)),
                  ),
                ),
                showNextButton: true,
                next: Container(
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Color.fromARGB(255, 0, 110, 228),
                    size: 25,
                  ),
                ),
                onDone: () => onDone(context), //ทำให้กลับมาหน้าหลัก
                curve: Curves.fastOutSlowIn,
                dotsDecorator: const DotsDecorator(
                  activeColor: Color.fromARGB(255, 0, 217, 255),
                  activeSize: Size.square(10),
                  size: Size(15, 15),
                  color:
                      Color.fromARGB(255, 0, 110, 228), //สุปุ่มเลื่อนหน้าต่าง
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onDone(context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOARDING', false);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ),
    );
  }
}
