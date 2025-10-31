import 'package:flutter/material.dart';
import 'package:todo_app/components/app_assets_path.dart';
import 'package:todo_app/components/app_color.dart';
import 'package:todo_app/components/app_text.dart';
import 'package:todo_app/components/app_text_style.dart';
import 'package:todo_app/utils/clock.dart';
import 'package:todo_app/utils/greeting_text.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: (307 / 812) * MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Container(color: AppColor.lightBlue),
                  Image.asset(
                    AppAssetsPath.imgCircle,
                    color: AppColor.SoftMintGreen,
                  ),
                  Align(
                    child: Column(
                      children: [
                        const SizedBox(height: 133),
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(AppAssetsPath.imgAvatar),
                        ),
                        SizedBox(height: 18),
                        AppText(
                          text: "Welcome, Oliva Grace",
                          style: AppTextStyle.tsSemiBoldWhite18,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),

            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 25),
                child: GreetingText(),
              ),
            ),

            Clock(),
            SizedBox(height: 21),

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 27),
                child: AppText(
                  text: "Tasks List",
                  style: AppTextStyle.tsSemiBoldBlack18,
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
