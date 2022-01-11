import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_sample/controller.dart';
import 'package:ui_sample/theme.dart';

bool isDark = true;
void main() {
  Get.put(ThemeController());
  runApp(
    GetBuilder<ThemeController>(
      id: "main",
      builder: (controller) => GetMaterialApp(
        home: LoginPage(),
        theme: isDark ? AppTheme.dark : AppTheme.light,
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final controller = Get.find<ThemeController>();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Dark Mode",
          style: TextStyle(
            color: isDark ? Colors.white : Colors.grey.shade900,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              !isDark ? Icons.nightlight_round : Icons.wb_sunny,
              color: isDark ? Colors.white : Colors.grey.shade900,
            ),
            onPressed: () {
              isDark ? isDark = false : isDark = true;
              controller.update(["main"]);
            },
          )
        ],
      ),
      body: Container(
        width: size.width,
        height: size.height,
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.05,
          vertical: size.height * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Hello, \nWelcome Back",
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: size.width * 0.1,
                  ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColorLight,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email or Phone number",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColorLight,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Forgot Password?",
                  style: Theme.of(context).textTheme.bodyText1,
                )
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () => {},
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Create account",
                  style: Theme.of(context).textTheme.bodyText1,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
