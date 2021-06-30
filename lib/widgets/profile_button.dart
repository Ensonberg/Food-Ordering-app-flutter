import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  final height;
  final width;
  final title;

  const ProfileButton({Key key, this.height, this.width, this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Padding(
        padding: const EdgeInsets.only(right: 8, left: 8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Container(
            color: Colors.white,
            height: height,
            width: width,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(color: Colors.black, fontSize: 13),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 15,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      onPressed: () {},
    );
  }
}
