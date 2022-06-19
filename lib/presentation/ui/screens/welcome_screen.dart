import 'package:flutter/material.dart';
import 'package:kwenda/presentation/ui/base/custom_elevated_button.dart';
import 'package:kwenda/presentation/ui/screens/login_screen.dart';
import 'package:kwenda/presentation/ui/screens/register_screen.dart';
import 'package:kwenda/presentation/utill/color_resources.dart';
import 'package:kwenda/presentation/utill/dimensions.dart';
import 'package:kwenda/presentation/utill/images.dart';
import 'package:kwenda/presentation/utill/nav.dart';
import 'package:kwenda/presentation/utill/strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cr.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Image.asset(
                Img.s_welcome_backround,
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: Di.PSOTL + Di.PSOL,
                          left: Di.PSL,
                        ),
                        child: Image.asset(
                          Img.ic_launcher_main,
                          width: 150,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: Di.getScreenSize(context).height * .35,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: Di.PS40),
                  child: const Text(
                    Str.expolre_new_way_to_travel,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Cr.whiteColor,
                      fontSize: Di.FSEL,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Di.SBHL,
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: Di.PSL),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 47,
                          child: CustomElevatedButton(
                            textWidget: Text(
                              Str.sign_in.toUpperCase(),
                              style: const TextStyle(
                                color: Cr.grey80,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            backgroundColor: Cr.whiteColor,
                            onPressed: () => Nav.push(
                              context,
                              const LoginScreen(),
                            ),
                          ),
                        ),
                      ),
                      Di.SBW40,
                      Expanded(
                        child: SizedBox(
                          height: 47,
                          child: CustomElevatedButton(
                            textWidget: Text(
                              Str.signup.toUpperCase(),
                              style: const TextStyle(
                                color: Cr.grey80,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            backgroundColor: Cr.whiteColor,
                            onPressed: () => Nav.push(
                              context,
                              const RegisterScreen(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: Di.PSL,
                    right: Di.PSL,
                    bottom: Di.PSS,
                  ),
                  child: const Text(
                    Str.by_continuing_you_agree_that_you_have_read_and_accept_our_t_amp_cs_and_privacy_policy,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Cr.grey20,
                      fontSize: Di.FSD,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
