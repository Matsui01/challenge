import 'package:flutter/material.dart';
import 'package:matsui/app_theme.dart';

import 'controllers/home.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Home home = Home();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 70,
          child: Container(
            color: AppTheme.background[50],
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Theme.of(context).backgroundColor,
                      width: 7,
                    ),
                  ),
                  child: CircleAvatar(
                    foregroundImage: AssetImage("assets/avatar.png"),
                    radius: iconSize * 2.2,
                  ),
                ),
                Text(
                  "The Main Protagonist",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Hello,",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Expanded(child: Container()),
                        Text(
                          "Satou Kazuma",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.w300),
                        ),
                        Expanded(
                          child: Container(
                            child: Text(
                              " 👋",
                              textAlign: TextAlign.left,
                              style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).backgroundColor),
                    side: MaterialStateProperty.all<BorderSide>(BorderSide.none),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(
                      right: spacingSize * 1.5,
                      left: spacingSize * 1.5,
                      bottom: smallSpacingSize,
                      top: smallSpacingSize,
                    ),
                    child: Text(
                      "Edit Profile",
                      style: Theme.of(context).textTheme.button!.copyWith(fontWeight: FontWeight.w400),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 30,
          child: Container(
            margin: EdgeInsets.only(top: spacingSize),
            color: AppTheme.primaryColorDark[50],
            child: Column(
              children: [
                _stats("Deaths", "12"),
                _stats("Stealing", "6"),
                _stats("Bosses Killed", "0"),
                _stats("Earned Total", "87k"),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _stats(String text, String value) {
    return Padding(
      padding: EdgeInsets.only(right: spacingSize, left: spacingSize, top: spacingSize),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: Theme.of(context).textTheme.bodyText2),
          Text(value, style: Theme.of(context).textTheme.bodyText2),
        ],
      ),
    );
  }
}
