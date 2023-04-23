import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int _counter = 0;
  String? username;
  String? password;

  @override
  Widget build(BuildContext context) {
    final safeHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    // responsive width funcion paramets is width of the screen
    double s(double width) {
      return width * MediaQuery.of(context).size.width / 390;
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color.fromARGB(255, 255, 255, 255),
          width: double.infinity,
          height: safeHeight,
          child: SingleChildScrollView(
            child: Container(
              // color: Colors.blueAccent,
              height: safeHeight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // mainAxisSize: MainAxisSize.values[0],
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: s(41),
                      ),

                      // local image from assets
                      Image.asset(
                        'assets/cow.png',
                        width: s(130),
                        height: s(130),
                      ),
                      // sized box height 41
                      SizedBox(
                        height: s(41),
                      ),
                      // title fontsize 24 and fontweight bold
                      Text(
                        'Нэвтрэх',
                        style: TextStyle(
                          fontSize: s(24),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: s(13),
                      ),

                      // description Бүртгэлийн мэдээллээ ашиглан нэвтэрнэ үү.
                      Container(
                        width: s(250),
                        child: Text(
                          'Бүртгэлийн мэдээллээ ашиглан нэвтэрнэ үү.',
                          style: TextStyle(
                            fontSize: s(14),
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: s(36),
                      ),

                      //text input title: Нэвтрэх нэр placeholder: Нэвтрэх нэр... and Нууц үг placeholder = Нууц үг... width 350
                      Container(
                        width: s(350),
                        child: Column(
                          children: [
                            TextField(
                              decoration: const InputDecoration(
                                labelText: 'Нэвтрэх нэр',
                                hintText: 'Нэвтрэх нэр...',
                              ),
                              style: TextStyle(
                                fontSize: s(14),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  username = value;
                                });
                              },
                            ),
                            SizedBox(
                              height: s(24),
                            ),
                            // hide toggled password
                            TextField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                labelText: 'Нууц үг',
                                hintText: 'Нууц үг...',
                              ),
                              onChanged: (value) {
                                setState(() {
                                  password = value;
                                });
                              },
                              style: TextStyle(
                                fontSize: s(14),
                              ),
                            ),
                            // if _counter > 0 then show password incorrect text
                            if (_counter > 0)
                              Text(
                                'Нууц үг буруу байна',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: s(14),
                                ),
                              ),
                          ],
                        ),
                      ),
                      // sized box height 41
                      SizedBox(
                        height: s(60),
                      ),

                      // login button width 350 height 50 and background color #00263E title = Нэвтрэх and title color = #FFFFFF
                      GestureDetector(
                        onTap: () => {
                          if (username == 'admin' && password == 'admin')
                            {Navigator.pushNamed(context, '/home')}
                          else
                            {
                              setState(() {
                                _counter++;
                              })
                            }
                        },
                        child: Container(
                          width: s(350),
                          height: s(50),
                          decoration: BoxDecoration(
                            color: Color(0xff00263E),
                            borderRadius: BorderRadius.circular(1),
                          ),
                          child: Center(
                            child: Text(
                              'Нэвтрэх',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: s(14),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: s(24),
                      ),
                    ],
                  ),
                  // font size 35 and color #00263E weight 700 and title = MALO
                  Column(
                    children: [
                      Text(
                        'MALO',
                        style: TextStyle(
                          fontSize: s(35),
                          color: Color(0xff00263E),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: s(20),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
