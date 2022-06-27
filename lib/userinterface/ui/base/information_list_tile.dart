import 'package:flutter/material.dart';
import 'package:kwenda/userinterface/utill/styles.dart';

class InformationListTile extends StatelessWidget {
  const InformationListTile({
    this.title,
    this.trailingText,
    Key? key,
    this.leading,
    this.trailing,
  }) : super(key: key);

  final String? title;
  final String? trailingText;
  final Widget? leading;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Text(
        title ?? "",
        style: defaultRegular,
      ),
      trailing: trailing ??
          Text(
            trailingText ?? "",
            style: defaultMedium,
          ),
    );
  }
}
