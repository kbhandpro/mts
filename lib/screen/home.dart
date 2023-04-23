import 'package:flutter/material.dart';
import 'package:mts_demo/widget/controllButton.dart';
import 'package:mts_demo/widget/gadget.dart';
import 'package:mts_demo/widget/navbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double s(double width) {
      return width * MediaQuery.of(context).size.width / 390;
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Color.fromRGBO(255, 255, 255, 1),
            child: Column(
              children: [
                const NavBar(),
                SizedBox(height: s(36)),
                const Gadget(),
                SizedBox(height: s(35)),
                Container(
                    padding: EdgeInsets.all(s(24)),
                    width: double.infinity,
                    color: Color.fromRGBO(243, 243, 243, 1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: s(21),
                        ),
                        // text size 24 font weight 600 color black value Хийх үйлдлүүд:
                        Text(
                          'Хийх үйлдлүүд:',
                          style: TextStyle(
                            fontSize: s(24),
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: s(24),
                        ),
                        Wrap(
                          spacing: s(6),
                          runSpacing: s(5.9),
                          direction: Axis.horizontal,
                          children: [
                            ControllButton(
                              text: 'Мал Тоолох',
                              image: 'assets/icons/settings.svg',
                            ),
                            ControllButton(
                              text: 'Малын мэдээлэл',
                            ),
                            ControllButton(
                              text: 'Мал бүртгэх',
                            ),
                            ControllButton(
                              text: 'Мал хасах',
                              onTap: () => {print('hello')},
                            ),
                          ],
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
