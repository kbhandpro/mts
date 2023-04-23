import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gadget extends StatefulWidget {
  const Gadget({super.key});

  @override
  State<Gadget> createState() => _GadgetState();
}

class _GadgetState extends State<Gadget> {
  bool connected = false;
  @override
  Widget build(BuildContext context) {
    double s(double width) {
      return width * MediaQuery.of(context).size.width / 390;
    }

    return Container(
      margin: EdgeInsets.fromLTRB(s(24), s(0), s(24), s(24)),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // size 24 font weight 400 color black value Төхөөрөмж
              Text(
                'Төхөөрөмж',
                style: TextStyle(
                  fontSize: s(24),
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: s(13),
              ),
              // size 14 font weight 500 color #00263E value Төхөөрөмж Холболт хийгдсэний дараа үйлдлүүдийг идэвхжүүлнэ үү.
              Container(
                width: s(180),
                child: Text(
                  '''Төхөөрөмж Холболт хийгдсэний
дараа үйлдлүүдийг 
идэвхжүүлнэ үү.''',
                  style: TextStyle(
                    fontSize: s(14),
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF00263E),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: s(5),
          ),
          // // swithch button off color #4BA26A on color #EC0976
          Row(
            children: [
              //

              Text(
                'OFF',
                style: TextStyle(
                  fontSize: s(14),
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF00263E),
                ),
              ),
              CupertinoSwitch(
                value: connected,
                onChanged: (value) {
                  setState(() {
                    connected = value;
                  });
                },
                activeColor: Color(0xFF4BA26A),
                trackColor: Color(0xFFEC0976),
                // inactiveThumbColor: Color(0xFFEC0976),
              ),
              Text(
                'ON',
                style: TextStyle(
                  fontSize: s(14),
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF00263E),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
