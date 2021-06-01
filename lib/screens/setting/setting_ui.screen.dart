import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/widgets/widgets.dart';

class SettingScreen extends StatelessWidget {
  static String routeName = '/setting';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar('Setting'),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            UiText(text: 'Asset Widget'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ImgIcon(
                  ImageIcons.camera,
                  size: 30,
                ),
                LoadingIndicator()
              ],
            ),
            VSpace.lg,
            Container(
              // color: Colors.grey,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                // color: C,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  width: 1,
                  color: Colors.blueGrey,
                  style: BorderStyle.solid,
                ),
              ),
              child: Column(
                children: [
                  UiText(text: 'Form Widget'),
                  LabeledTextInput(
                    label: 'Input Your Name',
                  ),
                  VSpace.lg,
                  LabeledTextInput(
                    label: 'Input Your password',
                    obscureText: true,
                  ),
                  VSpace.lg,
                  Button(
                    type: ButtonType.Elevated,
                    label: "Login",
                    onPressed: () => null,
                  ),
                  Button(
                    type: ButtonType.Outline,
                    label: "Register",
                    onPressed: () => null,
                  ),
                  Button(
                    label: "Forgot Password",
                    onPressed: () => null,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
