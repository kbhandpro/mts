import 'dart:ui';

import 'package:flutter/material.dart';

class WalkTrough2 extends StatefulWidget {
  const WalkTrough2({super.key});

  @override
  State<WalkTrough2> createState() => _WalkTrough2State();
}

class _WalkTrough2State extends State<WalkTrough2> {
  int a = 0;

  @override
  Widget build(BuildContext context) {
    Function? done() {
      Navigator.pushNamed(context, '/login');
      return null;
    }

    return a == 0
        ? Walk1(
            first: done,
            second: () {
              setState(() {
                a = 1;
              });
            },
            status: a,
            image: 'assets/cow.png',
          )
        : a == 1
            ? Walk1(
                firstTitle: 'Буцах',
                first: () {
                  setState(() {
                    a = 0;
                  });
                },
                secondTitle: 'Дараагийнх',
                second: () {
                  setState(() {
                    a = 2;
                  });
                },
                title: '''Төхөөрөмжөө гар
утаснаасаа удирд''',
                desc: '''Гар утсаа мал тооллогын төхөөрөмжтэй 
блүтүүтээр холбоод, төхөөрөмжөө 
гар утаснаасаа удирдах боломжтой''',
                status: a,
                image: 'assets/intro/pic2.png',
              )
            : Walk1(
                first: () {
                  setState(() {
                    a = 2;
                  });
                },
                firstTitle: '',
                second: done,
                secondTitle: 'Эхлэх',
                title: '''Малын бүртгэлээ
халааснаасаа хяна''',
                desc: '''Мал бүртгэлийн мэдээллээ гар утсан дээрээс
илүү хялбар байдлаар хянах боломжтой ''',
                status: a,
                image: 'assets/intro/pic3.png',
              );
  }
}

class Walk1 extends StatelessWidget {
  const Walk1(
      {super.key,
      this.first,
      this.second,
      this.firstTitle = 'Алгасах',
      this.secondTitle = 'Дараагийнх',
      this.title = '''Мал тооллогын 
системд''',
      this.desc = 'Тавтай морилно уу.',
      this.status = 0,
      this.image = 'assets/intro/pic1.png'});
  final void Function()? first;
  final void Function()? second;
  final String image;
  final String firstTitle;
  final String secondTitle;
  final String title;
  final String desc;
  final int status;
  @override
  Widget build(BuildContext context) {
    double s(double width) {
      return width * MediaQuery.of(context).size.width / 390;
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: Color.fromARGB(255, 255, 255, 255),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: s(20),
                  ),
                  Image.asset(
                    image,
                    height: s(350),
                    width: s(353),
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    height: s(34),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: s(9),
                        width: s(9),
                        decoration: BoxDecoration(
                            color: status == 0 ? Colors.black : Colors.black38,
                            borderRadius: BorderRadius.circular(s(4.5))),
                      ),
                      SizedBox(
                        width: s(12),
                      ),
                      Container(
                        height: s(9),
                        width: s(9),
                        decoration: BoxDecoration(
                            color: status == 1 ? Colors.black : Colors.black38,
                            borderRadius: BorderRadius.circular(s(4.5))),
                      ),
                      SizedBox(
                        width: s(12),
                      ),
                      Container(
                        height: s(9),
                        width: s(9),
                        decoration: BoxDecoration(
                            color: status == 2 ? Colors.black : Colors.black38,
                            borderRadius: BorderRadius.circular(s(4.5))),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: s(33),
                  ),
                  Text(
                    "MALO",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: s(35),
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(0, 38, 62, 1),
                    ),
                  ),
                  SizedBox(
                    height: s(30),
                  ),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: s(24),
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(0, 38, 62, 1),
                    ),
                  ),
                  SizedBox(
                    height: s(30),
                  ),
                  Text(
                    desc,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: s(14),
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(63, 61, 86, 1),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(s(39), 0, s(43), s(39)),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: firstTitle == ''
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.spaceBetween,
                  // mainAxisSize: MainAxisSize.max,
                  children: firstTitle == ''
                      ? [
                          ElevatedButton(
                            onPressed: second,
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF00263E),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Container(
                              height: s(45),
                              width: s(97),
                              alignment: Alignment.center,
                              child: Text(
                                secondTitle,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ]
                      : [
                          ElevatedButton(
                            onPressed: first,
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 196, 196, 196),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Container(
                              height: 45,
                              width: 97,
                              alignment: Alignment.center,
                              child: Text(
                                firstTitle,
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 38, 62, 1)),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: second,
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF00263E),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Container(
                              height: s(45),
                              width: s(97),
                              alignment: Alignment.center,
                              child: Text(
                                secondTitle,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
