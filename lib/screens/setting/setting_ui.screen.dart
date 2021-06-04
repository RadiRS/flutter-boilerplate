import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/widgets/widgets.dart';

class SettingScreen extends StatelessWidget {
  static String routeName = '/setting';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            _buildSection(
              'Asset Widget',
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ImgIcon(
                      ImageIcons.camera,
                      size: 30,
                    ),
                    LoadingIndicator()
                  ],
                )
              ],
            ),
            VSpace.lg,
            _buildSection(
              'Form Widget',
              children: [
                LabeledTextInput(
                  label: 'Input Your Name',
                ),
                VSpace.lg,
                LabeledTextInput(
                  label: 'Input Your password',
                  obscureText: true,
                ),
                VSpace.lg,
                FractionallySizedBox(
                  widthFactor: 0.5,
                  child: Button(
                    type: ButtonType.Elevated,
                    label: "Login",
                    onPressed: () => null,
                  ),
                ),
                Button(
                  type: ButtonType.Elevated,
                  label: 'Disabled',
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
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, {required List<Widget> children}) {
    return Container(
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
        children: [UiText(text: title), ...children.toList()],
      ),
    );
  }
}
