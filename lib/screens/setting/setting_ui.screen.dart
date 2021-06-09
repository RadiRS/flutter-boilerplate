import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/providers/theme_provider.dart';
import 'package:flutter_boilerplate/widgets/widgets.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatelessWidget {
  static String routeName = '/setting';

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: MainAppBar(
        'Setting',
        actions: [
          IconButton(
            onPressed: () => theme.changeTheme(),
            icon: Icon(theme.isLightTheme ? Icons.dark_mode : Icons.light_mode),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            _buildSection(
              'Asset Widget',
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const ImgIcon(
                      ImageIcons.camera,
                      size: 30,
                    ),
                    const LoadingIndicator(),
                  ],
                ),
                VSpace.lg,
                const GradientContainer(
                  [Colors.blue, Colors.red],
                  [0, 2],
                  width: double.infinity,
                  height: 50,
                  child: Text('Gradient'),
                )
              ],
            ),
            VSpace.lg,
            _buildSection(
              'Form Widget',
              children: [
                const TextInput(
                  label: 'Input Your Name',
                ),
                VSpace.lg,
                const TextInput(
                  label: 'Input Your password',
                  obscureText: true,
                ),
                VSpace.lg,
                const TextInput(
                  hintText: 'Confirm your password',
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                ),
                VSpace.lg,
                FractionallySizedBox(
                  widthFactor: 0.5,
                  child: Button(
                    type: ButtonType.elevated,
                    label: 'Login',
                    onPressed: () {},
                  ),
                ),
                const Button(
                  type: ButtonType.elevated,
                  label: 'Disabled',
                ),
                Button(
                  type: ButtonType.elevated,
                  label: 'Register',
                  onPressed: () {},
                ),
                Button(
                  label: 'Forgot Password',
                  onPressed: () {},
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
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.blueGrey),
      ),
      child: Column(
        children: [
          UiText(text: title),
          ...children.toList(),
        ],
      ),
    );
  }
}
