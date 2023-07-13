import 'package:calculator_app/screens/chooseLangauge.dart';
import 'package:calculator_app/screens/krish.dart';
import 'package:calculator_app/utlis/color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppBarConstant extends StatefulWidget implements PreferredSizeWidget {
  const AppBarConstant({super.key});

  @override
  Size get preferredSize => Size.fromHeight(
      MediaQueryData.fromView(PlatformDispatcher.instance.views.first)
              .size
              .height *
          0.0737);
  State<AppBarConstant> createState() => _AppBarConstantState();
}

class _AppBarConstantState extends State<AppBarConstant> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          title: const Text('Krish Ki practice'),
          centerTitle: true,
          backgroundColor: kGreen,
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ChooseLangauge()));
            },
            child: const Icon(
              Icons.menu,
            ),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.fromLTRB(5, 0, 3, 0),
              child: const Icon(
                size: 29,
                Icons.notification_add,
                color: kWhite,
                weight: BorderSide.strokeAlignOutside,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const KPhoto()));
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: const Icon(
                  Icons.mic,
                  size: 29,
                  color: kWhite,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
