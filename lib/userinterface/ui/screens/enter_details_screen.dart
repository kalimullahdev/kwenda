import 'package:flutter/material.dart';
import 'package:kwenda/userinterface/ui/base/custom_elevated_button.dart';
import 'package:kwenda/userinterface/utill/color_resources.dart';
import 'package:kwenda/userinterface/utill/dimensions.dart';
import 'package:kwenda/userinterface/utill/images.dart';
import 'package:kwenda/userinterface/utill/nav.dart';
import 'package:kwenda/userinterface/utill/strings.dart';

class EnterDetailsScreen extends StatefulWidget {
  const EnterDetailsScreen({Key? key}) : super(key: key);

  @override
  State<EnterDetailsScreen> createState() => _EnterDetailsScreenState();
}

class _EnterDetailsScreenState extends State<EnterDetailsScreen> {
  bool termsChecked = false;

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
              Str.what_s_your_name,
              style: TextStyle(
                fontSize: Di.FSOL,
              ),
            ),
            Di.SBHS,
            const Text(
              Str.drivers_will_confirm_it_s_you_when_they_pick_up,
              style: TextStyle(
                fontSize: Di.FSD,
                color: Cr.black,
              ),
            ),
            Di.SBHL,
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 50,
                    width: 30,
                    child: Center(
                      child: SizedBox(
                        height: 16,
                        child: Image.asset(
                          Img.people,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                    // child: const Center(
                    //     child: leading,
                    //     ),
                  ),
                  Di.SBWD,
                  const UnderLineTextField(hintText: Str.first_name),
                  Di.SBWD,
                  const UnderLineTextField(hintText: Str.last_name),
                ],
              ),
            ),
            Di.SBHD,
            OutlilneTextFieldIcon(
              icon: Image.asset(
                Img.email,
                color: Cr.black,
              ),
              hintText: Str.email,
            ),
            Di.SBHD,
            const OutlilneTextFieldIcon(
              icon: Icon(
                Icons.lock_outline,
                color: Cr.grey60,
              ),
              hintText: Str.password,
            ),
            Di.SBHL,
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Checkbox(
                    value: termsChecked,
                    onChanged: (value) {
                      setState(() {
                        termsChecked = !termsChecked;
                      });
                    },
                  ),
                  Di.SBWD,
                  const SizedBox(
                    width: 260,
                    child: Text(
                      Str.i_agree_ro_the_terms_amp_conditions_and_privacy_policy,
                      style: TextStyle(
                        color: Cr.grey40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Di.SBHOTL,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: SizedBox(
                height: 45,
                width: double.infinity,
                child: CustomElevatedButton(
                  textWidget: Text(
                    Str.signup.toUpperCase(),
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

class OutlilneTextFieldIcon extends StatelessWidget {
  const OutlilneTextFieldIcon({
    Key? key,
    this.hintText,
    required this.icon,
  }) : super(key: key);
  final String? hintText;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 50,
            width: 30,
            child: Center(
              child: SizedBox(
                height: 20,
                child: icon,
                // child: Icon(Icons.email_outlined),
              ),
            ),
            // child: const Center(
            //     child: leading,
            //     ),
          ),
          Di.SBWD,
          UnderLineTextField(hintText: hintText),
        ],
      ),
    );
  }
}

class UnderLineTextField extends StatelessWidget {
  const UnderLineTextField({
    Key? key,
    this.hintText,
  }) : super(key: key);
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return Flexible(
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
          border: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Cr.redIconColor,
            ),
          ),
          errorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Cr.redIconColor,
            ),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
