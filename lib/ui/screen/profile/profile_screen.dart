import 'package:developerfect_app/ui/item/toolbar_item.dart';
import 'package:developerfect_app/ui/screen/profile/m/body.dart';
import 'package:developerfect_app/ui/widget/dark_mode_widget.dart';
import 'package:developerfect_app/ui/widget/toolbar_text_widget.dart';
import 'package:developerfect_app/utils/common/system_utils.dart';
import 'package:developerfect_app/utils/constants.dart';
import 'package:developerfect_app/utils/ext/responsive_ext.dart';
import 'package:developerfect_app/utils/log/my_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'profile_controller.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProfileController>();
    final binding = Get.find<ProfileController>().binding;

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 32,
        titleTextStyle: Theme.of(context).textTheme.titleSmall,
        scrolledUnderElevation: 4,
        shadowColor: Colors.grey.shade50.withOpacity(0.2),
        title: _appBarContent(context),
      ),
      endDrawer: _endDrawer(context),
      body: const Body(),
    );
  }

  Widget _appBarContent(BuildContext context) {
    return Center(
      child: MaxWidthBox(
        maxWidth: MaxSizeConstant.maxWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '@LeVanSi',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w900,
                  ),
            ),
            if (context.isDisplayLargeThanTablet) _toolbarItems(),
          ],
        ),
      ),
    );
  }

  Widget _toolbarItems() {
    return Row(
      children: [
        ..._generateToolbarItem().map(
          (e) => Padding(
            padding: EdgeInsets.only(left: 8.w),
            child: ToolbarTextWidget(text: e.text, onTap: e.onTap),
          ),
        ),
        Gap(24.w),
        const DarkModeWidget()
      ],
    );
  }

  List<ToolbarItemModel> _generateToolbarItem() {
    return [
      ToolbarItemModel(text: 'About', onTap: () => _changeToIndex(1)),
      ToolbarItemModel(text: 'Services', onTap: () => _changeToIndex(2)),
      ToolbarItemModel(text: 'Skills', onTap: () => _changeToIndex(3)),
      ToolbarItemModel(text: 'Projects', onTap: () => _changeToIndex(4)),
      ToolbarItemModel(text: 'Blog', onTap: () => _changeToIndex(5)),
      ToolbarItemModel(text: 'Contact', onTap: () => _changeToIndex(6)),
    ];
  }

  _changeToIndex(int i) {
    MyLogger.d("Change to Index $i");
  }

  _endDrawer(BuildContext context) {
    if (context.isDisplayLargeThanTablet) return null;
    return Drawer(
      child: Column(
        children: [
          Gap(16.h),
          ..._generateToolbarItem().map(
            (e) => ListTile(
              title: Text(e.text),
              onTap: () {
                // _onItemClicked(e, context);
              },
            ),
          ),
          Gap(8.h),
          const Divider(
            thickness: 0.4,
          ),
          Gap(8.h),
          _switchTheme(context),
        ],
      ),
    );
  }

  Widget _switchTheme(BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Switch theme',
            style: context.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          const DarkModeWidget(),
        ],
      ),
      onTap: () {
        SystemUtils.changeTheme();
      },
    );
  }
}
