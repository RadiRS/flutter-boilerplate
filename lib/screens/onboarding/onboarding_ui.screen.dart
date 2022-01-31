import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/widgets/common/button.dart';
import 'package:flutter_boilerplate/widgets/widgets.dart';

class OnboardingScreen extends StatefulWidget {
  static String routeName = '/onboarding';

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPage = 0;
  List<Map<String, String>> onboardingData = [
    {
      'text': 'Welcome to FT Boilerplate!',
      'image': 'assets/images/ilustration/ilus_1.png'
    },
    {
      'text':
          'Dolores enim quod incidunt quasi aperiam quaerat aut consequuntur ullam.',
      'image': 'assets/images/ilustration/ilus_2.png'
    },
    {
      'text':
          'Eveniet illum provident optio et officiis occaecati sed aut qui.',
      'image': 'assets/images/ilustration/ilus_1.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() => currentPage = value);
                  },
                  itemCount: onboardingData.length,
                  itemBuilder: (context, index) => SplashContent(
                    image: onboardingData[index]['image'],
                    text: onboardingData[index]['text'],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          onboardingData.length,
                          (index) => buildDot(index: index),
                        ),
                      ),
                      const Spacer(flex: 3),
                      SizedBox(
                        width: double.infinity,
                        child: Button(
                          label: 'Continue',
                          textStyle: const TextStyle(color: Colors.white),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/');
                          },
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.blue : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          const Spacer(),
          const Text(
            'FT Boilerplate',
            style: TextStyle(
              fontSize: 36,
              // color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            text ?? '',
            textAlign: TextAlign.center,
          ),
          const Spacer(flex: 2),
          Image.asset(
            image ?? '',
            height: 265,
            width: 235,
          ),
        ],
      ),
    );
  }
}
