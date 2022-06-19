import 'package:flutter/material.dart';
import 'package:kwenda/presentation/ui/base/custom_elevated_button.dart';
import 'package:kwenda/presentation/ui/base/simple_textfield.dart';
import 'package:kwenda/presentation/utill/color_resources.dart';
import 'package:kwenda/presentation/utill/dimensions.dart';
import 'package:kwenda/presentation/utill/strings.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Di.PSL),
        child: Column(
          children: [
            Di.SBHOTL,
            const SimpleTextField(
              hintText: Str.current_password,
            ),
            Di.SBHL,
            const SimpleTextField(
              hintText: Str.new_password,
            ),
            Di.SBHL,
            const SimpleTextField(
              hintText: Str.confirm_password,
            ),
            Di.SBHL,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: SizedBox(
                height: 45,
                width: double.infinity,
                child: CustomElevatedButton(
                  textWidget: Text(
                    Str.change_password_title.toUpperCase(),
                    style: const TextStyle(
                      fontSize: Di.FSL,
                    ),
                  ),
                  backgroundColor: Cr.black,
                  borderRadius: 100,
                  makeRounded: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
