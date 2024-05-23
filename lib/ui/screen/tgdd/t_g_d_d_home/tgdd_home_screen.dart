import 'package:developerfect_app/ui/item/toolbar_item.dart';
import 'package:developerfect_app/ui/widget/responsive_menu_wrapper.dart';
import 'package:developerfect_app/utils/log/my_logger.dart';
import 'package:developerfect_app/utils/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'tgdd_home_controller.dart';

class TGDDHomeScreen extends StatelessWidget {
  const TGDDHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TGDDHomeController>();
    final binding = Get.find<TGDDHomeController>().binding;

    return ResponsiveMenuWrapperWidget(
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'A HOME',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      items: [
        ToolbarItemModel(
          text: 'Blog',
          onTap: () {
            MyLogger.d("Blog");
          },
        ),
        ToolbarItemModel(
          text: 'About',
          onTap: () {
            MyLogger.d("About");
          },
        ),
        ToolbarItemModel(
          text: 'Contact',
          onTap: () {
            MyLogger.d("Contact");
          },
        ),
        ToolbarItemModel(
          text: 'Vision',
          onTap: () {
            MyLogger.d("Vision");
          },
        ),

      ],
      logo: SvgPicture.network('https://s1.vnecdn.net/vnexpress/restruct/i/v890/v2_2019/pc/graphics/logo.svg'),
      drawerHeader: DrawerHeader(
        decoration: BoxDecoration(
          color: flexSchemeLight.primary,
        ),
        child: Text(
          'Drawer Header',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.sp,
          ),
        ),
      ),
    );
  }
}
