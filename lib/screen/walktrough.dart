import 'package:flutter/material.dart';
import 'package:flutter_walkthrough_screen/flutter_walkthrough_screen.dart';
import 'package:mts_demo/screen/home.dart';
import 'package:mts_demo/screen/login.dart';

class WalkTrough extends StatelessWidget {
  // const WalkTrough({super.key});
  final List<OnbordingData> list = [
    const OnbordingData(
      image: AssetImage("assets/intro/pic1.png"),
      titleText: Text(
        '''Мал тооллогын 
системд''',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
      descText: Text(
        "Тавтай морилно уу.",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
    ),
    const OnbordingData(
      image: AssetImage("assets/intro/pic2.png"),
      titleText: Text(
        '''Төхөөрөмжөө гар
утаснаасаа удирд''',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
      descText: Text(
        '''Гар утсаа мал тооллогын төхөөрөмжтэй 
блүтүүтээр холбоод, төхөөрөмжөө 
гар утаснаасаа удирдах боломжтой''',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
    ),
    const OnbordingData(
      image: AssetImage("assets/intro/pic3.png"),
      titleText: Text(
        '''Малын бүртгэлээ
халааснаасаа хяна''',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
      descText: Text(
        '''Мал бүртгэлийн мэдээллээ гар утсан дээрээс
илүү хялбар байдлаар хянах боломжтой ''',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
    ),
  ];

  // final List<Widget> list = [
  //   Container(),
  // ]

  @override
  Widget build(BuildContext context) {
    return IntroScreen(
      onbordingDataList: list,
      colors: const [
        //list of colors for per pages
        Colors.white,
        Colors.red,
      ],
      pageRoute: MaterialPageRoute(
        builder: (context) => Login(),
      ),
      nextButton: const Text(
        "Дараах",
        style: TextStyle(
          color: Color.fromRGBO(0, 38, 62, 1),
        ),
      ),
      lastButton: const Text(
        "Эхлэх",
        style: TextStyle(
          color: Color.fromRGBO(0, 38, 62, 1),
        ),
      ),
      skipButton: const Text(
        "Алгасах",
        style: TextStyle(
          color: Color.fromRGBO(0, 38, 62, 1),
        ),
      ),
      selectedDotColor: Colors.orange,
      unSelectdDotColor: Colors.grey,
    );
  }
}
