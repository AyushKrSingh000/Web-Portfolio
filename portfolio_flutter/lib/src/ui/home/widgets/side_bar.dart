import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomSideBar extends ConsumerStatefulWidget {
  const CustomSideBar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CustomSideBarState();
}

class _CustomSideBarState extends ConsumerState<CustomSideBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      decoration: BoxDecoration(
        color: const Color(0xff011627),
        border: Border(
          right: BorderSide(color: Colors.grey.withOpacity(0.5), width: 0.3),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            Icon(
              Icons.file_download,
              color: Colors.grey,
              size: 32,
            ),
            SizedBox(
              height: 15,
            ),
            Icon(
              Icons.person,
              color: Colors.grey,
              size: 32,
            ),
            SizedBox(
              height: 15,
            ),
            Icon(
              Icons.person,
              color: Colors.grey,
              size: 32,
            ),
            SizedBox(
              height: 15,
            ),
            Icon(
              Icons.person,
              color: Colors.grey,
              size: 32,
            ),
            SizedBox(
              height: 15,
            ),
            Icon(
              Icons.person,
              color: Colors.grey,
              size: 32,
            ),
            Expanded(child: SizedBox()),
            Icon(
              CupertinoIcons.person_alt_circle,
              color: Colors.grey,
              size: 32,
            ),
            SizedBox(
              height: 15,
            ),
            Icon(
              Icons.settings_outlined,
              color: Colors.grey,
              size: 32,
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
