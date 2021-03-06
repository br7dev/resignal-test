import 'package:flutter/material.dart';

class BuildCustomCard extends StatelessWidget {
  const BuildCustomCard({
    Key key,
    @required this.backgroundColor,
    @required this.darkShade,
    @required this.primaryText,
    @required this.secondaryText,
    @required this.icon,
  }) : super(key: key);

  final Color backgroundColor;
  final Color darkShade;
  final String primaryText;
  final String secondaryText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    icon,
                    size: 35,
                    color: darkShade,
                  ),
                  height: 100,
                  width: 55,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 20),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      text: primaryText,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: secondaryText,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            color: darkShade,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
