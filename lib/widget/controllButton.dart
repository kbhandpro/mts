import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ControllButton extends StatelessWidget {
  const ControllButton({
    super.key,
    this.image = 'assets/icons/folder.svg',
    this.text = '[no text]',
    this.onTap,
  });
  final String text;
  final String image;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    double s(double width) {
      return width * MediaQuery.of(context).size.width / 390;
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: s(168),
        height: s(165),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(0, 38, 62, 1),
          borderRadius: BorderRadius.circular(s(10)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              image,
              // 'assets/icons/muug.svg',
              width: s(72),
              height: s(72),
            ),
            SizedBox(
              height: s(7),
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: s(14),
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
            SizedBox(height: s(4)),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset(
                  'assets/icons/power.svg',
                  width: s(16),
                  height: s(16),
                ),
                SizedBox(width: s(10))
              ],
            )
          ],
        ),
      ),
    );
  }
}
