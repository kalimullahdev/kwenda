import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.title,
    this.subTitle,
    this.trailingIcon,
    this.leading,
    this.onTap,
    // this.logoImage,
  }) : super(key: key);
  final String title;
  final String? subTitle;
  final Widget? trailingIcon;
  final Widget? leading;
  final void Function()? onTap;
  // final ImageProvider? logoImage;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: leading,
      title: Text(title),
      subtitle: subTitle != null ? Text(subTitle!) : null,
      trailing: trailingIcon,
    );
  }
}
