import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_app/components/app_assets_path.dart';
import 'package:todo_app/components/app_color.dart';
import 'package:todo_app/components/app_text.dart';
import 'package:todo_app/components/app_text_style.dart';
import 'package:todo_app/constants/app_data.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/screens/widgets/clock.dart';
import 'package:todo_app/screens/widgets/greeting_text.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final TextEditingController _textFieldController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    /// Only run once when the widget is inserted into the widget tree after createState()
    super.initState();
  }

  @override
  void dispose() {
    _textFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;
    return Scaffold(
      backgroundColor: AppColor.white100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildUserInfoWidget(screenHeight),
            SizedBox(height: 25),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [GreetingText(), SizedBox(width: 25)],
            // ),
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
            SizedBox(height: 20),
            _buildTasksListWidget(
              screenHeight: screenHeight,
              screenWidth: screenWidth,
            ),
          ],
        ),
      ),
    );
  }

  Container _buildUserInfoWidget(double screenHeight) {
    return Container(
      color: AppColor.lightBlue,
      height: (307 / 812) * screenHeight,
      width: double.infinity,
      child: Stack(
        children: [
          Image.asset(AppAssetsPath.imgCircle, color: AppColor.softMintGreen),
          Column(
            children: [
              const SizedBox(height: 133),
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(AppAssetsPath.imgAvatar),
              ),
              SizedBox(height: 18),
              Center(
                child: AppText(
                  text: "Welcome, Oliva Grace",
                  style: AppTextStyle.tsSemiBoldWhite18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _buildTasksListWidget({
    required double screenHeight,
    required double screenWidth,
  }) {
    return Container(
      width: screenWidth - 52,
      height: (248 / 812) * screenHeight,
      padding: EdgeInsets.fromLTRB(20, 22, 24, 21),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: AppColor.black.withValues(alpha: 0.25),
            blurRadius: 15,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              AppText(text: "Tasks List", style: AppTextStyle.tsRegularBlack14),
              Spacer(),
              InkWell(
                onTap: () {
                  /// show dialog with text field to add new task
                  _textFieldController.clear();
                  _showAddTaskDialog();
                },
                child: SvgPicture.asset(AppAssetsPath.icPlusCircle),
              ),
            ],
          ),
          SizedBox(height: 25),
          _buildTaskItemWidget(),
        ],
      ),
    );
  }

  Expanded _buildTaskItemWidget() {
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.zero,
        separatorBuilder: (context, index) => SizedBox(height: 18),
        itemCount: AppData.tasksList.length,
        itemBuilder: (context, index) {
          final item = AppData.tasksList[index];
          return GestureDetector(
            onTap: () {
              setState(() {
                item.isCompleted = !item.isCompleted;
              });
            },
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color:
                        item.isCompleted ? AppColor.lightBlue : AppColor.white,
                    border: Border.all(color: AppColor.black),
                    shape: BoxShape.rectangle,
                  ),
                  width: 17,
                  height: 17,
                ),
                SizedBox(width: 11),
                AppText(text: item.title, style: AppTextStyle.tsRegularBlack14),
              ],
            ),
          );
        },
      ),
    );
  }

  void _showAddTaskDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Create Task'),
          content: TextField(
            controller: _textFieldController,
            decoration: const InputDecoration(hintText: "Enter task title"),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
            ),
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.pop(context);
                if (_textFieldController.text.isEmpty) {
                  return;
                }
                setState(() {
                  AppData.tasksList.add(
                    Task(
                      title: _textFieldController.text.trim(),
                      isCompleted: false,
                    ),
                  );
                });
              },
            ),
          ],
        );
      },
    );
  }
}
