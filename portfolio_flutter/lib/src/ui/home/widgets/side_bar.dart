import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_client/portfolio_client.dart';
import 'package:portfolio_flutter/main.dart';
import 'package:portfolio_flutter/src/utils/snackbar_utils.dart';
import '../home_page.dart';

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 5,
          ),
          SideBarIcon(
            data: FontAwesomeIcons.file,
            isActive: true,
            onTap: () {
              key.currentState?.openDrawer();
            },
          ),
          SideBarIcon(
            data: FontAwesomeIcons.github,
            isActive: false,
            onTap: () async {
              final project = Projects(
                id: 3,
                projectName: "saturnalia app",
                desc: "sdjhbs",
                isPublic: true,
                imageUrl: "",
                sourceCode: "",
                techStacks: ["dfgbsdfjg", 'jfdshgjkbfdjkg'],
                liveDemo: "",
              );
              try {
                final res = await client.projects.addProjects(project);
                if (res == true) {
                  showSuccessMessage(context, "done");
                }
              } catch (e) {
                showErrorMessage(context, e.toString());
              }
              // key.currentState?.openDrawer();
            },
          ),
          SideBarIcon(
            data: FontAwesomeIcons.html5,
            isActive: false,
            onTap: () {},
          ),
          SideBarIcon(
            data: FontAwesomeIcons.pencilAlt,
            isActive: false,
            onTap: () {},
          ),
          SideBarIcon(
            data: FontAwesomeIcons.envelope,
            isActive: false,
            onTap: () {},
          ),
          const Expanded(child: SizedBox()),
          const Icon(
            CupertinoIcons.person_alt_circle,
            color: Colors.grey,
            size: 32,
          ),
          const SizedBox(
            height: 15,
          ),
          const Icon(
            Icons.settings_outlined,
            color: Colors.grey,
            size: 32,
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}

class SideBarIcon extends ConsumerWidget {
  final IconData data;
  final VoidCallback onTap;
  final bool isActive;
  const SideBarIcon({
    super.key,
    required this.data,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        SizedBox(
          width: 50,
          height: 50,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
              hoverColor: Colors.white.withOpacity(0.2),
              child: Icon(
                data,
                color: !isActive ? Colors.grey : Colors.white,
                size: 25,
              ),
            ),
          ),
        ),
        if (isActive)
          Container(
            height: 35,
            width: 2,
            color: Colors.white,
          ),
      ],
    );
  }
}
