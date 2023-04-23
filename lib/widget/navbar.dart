import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    double s(double width) {
      return width * MediaQuery.of(context).size.width / 390;
    }

    return Container(
      width: double.infinity,
      // color: Colors.black12,
      padding: EdgeInsets.fromLTRB(s(24), s(12), s(24), s(12)),
      // decoration: BoxDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // size 35 font weight 700 color black value MALO
        children: [
          Text(
            'MALO',
            style: TextStyle(
              fontSize: s(35),
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          Image(
            image: AssetImage('assets/cow.png'),
            height: s(64),
            width: s(64),
          ),
          GestureDetector(
            onTap: () {
              Navigator.popAndPushNamed(context, '/login');
            },
            child: Row(
              children: [
                // size 14 font weight 700 color #00263E value MALO and logout image
                Text(
                  'MALO',
                  style: TextStyle(
                    fontSize: s(14),
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF00263E),
                  ),
                ),
                SizedBox(
                  width: s(8),
                ),
                Image(
                  image: AssetImage('assets/images/logout.png'),
                  height: s(24),
                  width: s(24),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
