import 'package:flutter/material.dart';
import 'package:kwenda/userinterface/ui/base/custom_text_button.dart';
import 'package:kwenda/userinterface/ui/base/custom_elevated_button.dart';
import 'package:kwenda/userinterface/utill/color_resources.dart';
import 'package:kwenda/userinterface/utill/dimensions.dart';
import 'package:kwenda/userinterface/utill/styles.dart';

Future<dynamic> alreadyAccoundDialog(BuildContext context) {
  return customDialog(
    context,
    titleWidget: SizedBox(
      width: 200,
      child: Text(
        "Your phone number (405) 123 - 456 already has an account on this app.",
        style: defaultMedium.copyWith(
          height: 1.4,
          fontSize: Di.FSD,
        ),
        textAlign: TextAlign.center,
      ),
    ),
    subtitle: "Do you want to log in?",
    firstButtonText: "Back",
    secondButtonText: "Log in",
    secondButtonWidth: 100,
    onPressedSecondButton: () {},
  );
}

Future<dynamic> codeNotRecievedDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              20.0,
            ),
          ), //this right here
          child: SizedBox(
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Have you not receive verification codes OTP",
                    style: defaultMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: Di.PSD,
                  ),
                  Text(
                    "kwenda will call you on (405) 123 - 456 to read the OPT code",
                    style: defaultRegular.copyWith(color: Cr.greyColor),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: Di.PSD,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomTextButton(
                        onPressed: () => Navigator.pop(context),
                        text: "CLOSE",
                      ),
                      CustomElevatedButton(
                        onPressed: () {},
                        text: 'CALL',
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      });
}

Future<dynamic> customDialog(
  BuildContext context, {
  String? title,
  Widget? titleWidget,
  String? subtitle,
  void Function()? onPressedFirstButton,
  String? firstButtonText,
  void Function()? onPressedSecondButton,
  String? secondButtonText,
  double? dialogHeight,
  double? secondButtonWidth,
}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            20.0,
          ),
        ), //this right here
        child: Padding(
          padding: const EdgeInsets.all(Di.PSD),
          child: SizedBox(
            height: dialogHeight ?? 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                (title != null || titleWidget != null)
                    ? titleWidget ??
                        Text(
                          title!,
                          style: defaultMedium,
                          textAlign: TextAlign.center,
                        )
                    : const SizedBox(),
                (title != null || titleWidget != null)
                    ? const SizedBox(
                        height: Di.PSL,
                      )
                    : const SizedBox(),
                subtitle != null
                    ? Text(
                        subtitle,
                        style: defaultRegular.copyWith(color: Cr.greyColor),
                        textAlign: TextAlign.center,
                      )
                    : const SizedBox(),
                subtitle != null
                    ? const SizedBox(
                        // height: Di.PSD,
                        height: Di.PSL,
                      )
                    : const SizedBox(),
                Row(
                  mainAxisAlignment:
                      (firstButtonText != null && secondButtonText != null)
                          ? MainAxisAlignment.spaceEvenly
                          : MainAxisAlignment.center,
                  children: [
                    firstButtonText != null
                        ? CustomTextButton(
                            onPressed: onPressedFirstButton ?? () {},
                            text: firstButtonText,
                          )
                        : const SizedBox(),
                    secondButtonText != null
                        ? SizedBox(
                            width: secondButtonWidth ?? 100,
                            // width: secondButtonWidth,
                            child: CustomElevatedButton(
                              onPressed: onPressedSecondButton ?? () {},
                              text: secondButtonText,
                            ),
                          )
                        : const SizedBox(),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}

Future<dynamic> customDialogWithChild(
  BuildContext context, {
  required Widget child,
  AlignmentGeometry? alignment,
  Color? backgroundColor,
}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        alignment: alignment,
        elevation: 0,
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            20.0,
          ),
        ), //this right here
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: child,
        ),
      );
    },
  );
}

Future<dynamic> customDialogWithIcon(
  BuildContext context,
  IconData? iconData, {
  String? title,
  String? subtitle,
  void Function()? onPressedFirstButton,
  String? firstButtonText,
  void Function()? onPressedSecondButton,
  String? secondButtonText,
  double? height,
  Widget? icon,
}) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              20.0,
            ),
          ), //this right here
          child: SizedBox(
            height: height ?? 250,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  icon ??
                      Icon(
                        iconData,
                        color: Cr.blueColor,
                        size: Di.WSS,
                      ),
                  const SizedBox(
                    height: Di.PSL,
                  ),
                  title != null
                      ? Text(
                          title,
                          style: defaultMedium,
                          textAlign: TextAlign.center,
                        )
                      : const SizedBox(),
                  title != null
                      ? const SizedBox(
                          height: Di.PSD,
                        )
                      : const SizedBox(),
                  subtitle != null
                      ? Text(
                          subtitle,
                          style: defaultRegular.copyWith(color: Cr.greyColor),
                          textAlign: TextAlign.center,
                        )
                      : const SizedBox(),
                  subtitle != null
                      ? const SizedBox(
                          height: Di.PSD,
                        )
                      : const SizedBox(),
                  const SizedBox(height: Di.PSOL),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      firstButtonText != null
                          ? CustomTextButton(
                              onPressed: onPressedFirstButton ?? () {},
                              text: firstButtonText,
                            )
                          : const SizedBox(),
                      const SizedBox(width: Di.PSS),
                      secondButtonText != null
                          ? SizedBox(
                              width: firstButtonText == null ? 200 : null,
                              child: CustomElevatedButton(
                                onPressed: onPressedSecondButton ?? () {},
                                text: secondButtonText,
                              ),
                            )
                          : const SizedBox(),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      });
}

Future<dynamic> phoneNumberLoginDialog(
  BuildContext context, {
  String? title,
  String? mainText,
  String? description,
  void Function()? onPressedFirstButton,
  String? firstButtonText,
  void Function()? onPressedSecondButton,
  String? secondButtonText,
}) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              20.0,
            ),
          ), //this right here
          child: SizedBox(
            height: Di.WSOL,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  title != null
                      ? Text(
                          title,
                          style: defaultRegular.copyWith(color: Cr.greyColor),
                          textAlign: TextAlign.center,
                        )
                      : const SizedBox(),
                  title != null
                      ? const SizedBox(
                          height: Di.PSD,
                        )
                      : const SizedBox(),
                  mainText != null
                      ? Text(
                          mainText,
                          style: defaultMedium,
                          textAlign: TextAlign.center,
                        )
                      : const SizedBox(),
                  mainText != null
                      ? const SizedBox(
                          height: Di.PSD,
                        )
                      : const SizedBox(),
                  description != null
                      ? Text(
                          description,
                          style: defaultRegular.copyWith(color: Cr.greyColor),
                          textAlign: TextAlign.center,
                        )
                      : const SizedBox(),
                  description != null
                      ? const SizedBox(
                          height: Di.PSD,
                        )
                      : const SizedBox(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      firstButtonText != null
                          ? CustomTextButton(
                              onPressed: onPressedFirstButton ?? () {},
                              text: firstButtonText,
                            )
                          : const SizedBox(),
                      secondButtonText != null
                          ? SizedBox(
                              width: 100,
                              child: CustomElevatedButton(
                                onPressed: onPressedSecondButton ?? () {},
                                text: secondButtonText,
                              ),
                            )
                          : const SizedBox(),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      });
}
