import 'package:flutter/material.dart';
import 'package:kwenda/presentation/ui/base/rounded_elevated_button.dart';
import 'package:kwenda/presentation/ui/screens/enter_details_screen.dart';
import 'package:kwenda/presentation/ui/screens/login_screen.dart';
import 'package:kwenda/presentation/utill/color_resources.dart';
import 'package:kwenda/presentation/utill/dimensions.dart';
import 'package:kwenda/presentation/utill/nav.dart';
import 'package:kwenda/presentation/utill/strings.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Di.PSOL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              Str.what_s_your_number,
              style: TextStyle(
                fontSize: Di.FSOL,
                fontWeight: FontWeight.bold,
                color: Cr.blackTextColor,
              ),
            ),
            Di.SBHS,
            const Text(
              Str.we_ll_text_a_code_to_verify_phone,
              style: TextStyle(
                fontSize: Di.FSD,
                color: Cr.black,
              ),
            ),
            Di.SBHL,
            const SignInTextField(
              hintText: Str.phone_number,
              leading: Text(
                Str.country_code,
              ),
            ),
            Di.SBHOL,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: SizedBox(
                height: 45,
                width: double.infinity,
                child: CustomElevatedButton(
                  textWidget: Text(
                    Str.verify.toUpperCase(),
                    style: const TextStyle(
                      fontSize: Di.FSL,
                    ),
                  ),
                  onPressed: () {
                    Nav.push(context, const EnterDetailsScreen());
                  },
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
