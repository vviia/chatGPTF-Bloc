import 'package:flutter/material.dart';
import 'package:fchatgpt/features/app/app_const/page_const.dart';
import 'package:fchatgpt/features/app/home/widgets/home_button_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Image.asset("assets/app_logo.png"),
              ],
            ),
            Column(
              children: [
                HomeButtonWidget(
                  textData: "Asking for Image",
                  // textAlignment: TextAlign.center,
                  iconData: Icons.image_outlined,
                  onTap: () {
                    Navigator.pushNamed(context, PageConst.ImageGenerationPage);
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                HomeButtonWidget(
                  textData: "Asking for Text",
                  iconData: Icons.text_fields_outlined,
                  onTap: () {
                    Navigator.pushNamed(context, PageConst.textCompletionPage);
                  },
                ),
              ],
            ),
            Text(
              "ChatGPT: Optimizing by vviia ",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
