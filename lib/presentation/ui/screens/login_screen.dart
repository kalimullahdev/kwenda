import 'package:flutter/material.dart';
import 'package:kwenda/presentation/ui/base/rounded_elevated_button.dart';
import 'package:kwenda/presentation/utill/color_resources.dart';
import 'package:kwenda/presentation/utill/dimensions.dart';
import 'package:kwenda/presentation/utill/images.dart';
import 'package:kwenda/presentation/utill/strings.dart';
import 'package:kwenda/presentation/utill/styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cr.grey10,
      appBar: AppBar(
        // leading: IconButton(
        //   onPressed: () {
        //     Nav.pop(context);
        //   },
        //   icon: const Icon(
        //     Icons.arrow_back,
        //     color: Cr.black,
        //   ),
        // ),
        title: const Text(
          Str.sign_in,
          style: TextStyle(
            color: Cr.black,
            fontSize: Di.FSD + 1,
          ),
        ),
        backgroundColor: Cr.whiteColor,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(Di.PSL),
          padding: const EdgeInsets.all(Di.PSL),
          decoration: Styles.boxDecorationWithShadow.copyWith(
            color: Cr.whiteColor,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                Img.img_number_verification,
                height: 150,
              ),
              const Text(
                Str.signin,
                style: TextStyle(
                  fontSize: Di.FSL,
                  fontWeight: FontWeight.bold,
                  color: Cr.grey80,
                ),
              ),
              Di.SBHL,
              const SignInTextField(
                hintText: Str.phone_number,
                leading: Text(
                  Str.country_code,
                ),
              ),
              Di.SBHS,
              const SignInTextField(
                hintText: Str.passbook,
                leading: Icon(
                  Icons.lock_outline,
                  color: Cr.grey60,
                  size: Di.ISEL,
                ),
              ),
              Di.SBHL,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: CustomElevatedButton(
                    textWidget: Text(
                      Str.sign_in.toUpperCase(),
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
              Di.SBHL,
              const Text(
                Str.change_password,
                style: TextStyle(
                  color: Cr.grey60,
                  fontSize: Di.FSL,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SignInTextField extends StatelessWidget {
  const SignInTextField({
    Key? key,
    this.leading,
    this.hintText,
  }) : super(key: key);
  final Widget? leading;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 50,
            width: 53,
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: Colors.black,
                  width: 2.0,
                ),
              ),
            ),
            child: Center(
              child: leading,
            ),
          ),
          Di.SBWD,
          Flexible(
            child: TextField(
              decoration: InputDecoration(
                // suffixIcon: const Icon(
                //   Icons.info,
                //   color: Cr.redIconColor,
                // ),
                hintStyle: const TextStyle(
                  fontSize: Di.FSD,
                  color: Cr.grey40,
                ),
                border: InputBorder.none,
                errorBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Cr.redIconColor,
                )),
                hintText: hintText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
