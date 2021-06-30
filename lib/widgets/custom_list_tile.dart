import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final title;

  const CustomListTile({Key key, this.icon, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 0,
      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Padding(
        padding: const EdgeInsets.only(left: 0),
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(right: 150),
        child: Divider(
          color: Colors.white,
          height: 1,
        ),
      ),
      onTap: () {},
    );
  }
}
