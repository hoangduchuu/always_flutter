import 'package:developerfect_app/ui/item/toolbar_item.dart';
import 'package:developerfect_app/ui/widget/toolbar_text_widget.dart';
import 'package:developerfect_app/utils/ext/responsive_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ResponsiveMenuWrapperWidget extends StatelessWidget {
  const ResponsiveMenuWrapperWidget({super.key, required this.body, required this.items, this.logo, this.drawerHeader});

  final Widget body;

  final List<ToolbarItemModel> items;

  final Widget? logo;
  final Widget? drawerHeader;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _appBarContent(context),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.onSecondary,
      ),
      body: body,
      endDrawer: _drawer(context),
    );
  }

  Widget _appBarContent(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        logo != null
            ? SizedBox(
                height: kToolbarHeight,
                child: logo,
              )
            : const SizedBox(),

        if (context.isDisplayLargeThanTablet)
          Spacer(),
          Expanded(
              child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: _toolbarItems(),
          )),
      ],
    );
  }

  Widget _toolbarItems() {
    return Row(
      children: [
        ...items.map(
          (e) => Container(
            color: Colors.transparent,
            padding: EdgeInsets.only(left: 8.w),
            child: ToolbarTextWidget(text: e.text, onTap: e.onTap),
          ),
        ),
        Gap(24.w),
      ],
    );
  }

  _drawer(BuildContext context) {
    if (context.isDisplayLargeThanTablet) return null;
    return Drawer(
      child: ListView(
        children: [
          drawerHeader ?? const SizedBox(),
          Gap(16.h),
          ...items.map(
            (e) => ListTile(
              title: Text(e.text,style: TextStyle(
                color: Theme.of(context).colorScheme.scrim,
              ),),
              onTap: () {
                e.onTap?.call();
                Get.back();
              },
            ),
          ),
          Gap(8.h),
          const Divider(
            thickness: 0.4,
          ),
          Gap(8.h),
        ],
      ),
    );
  }
}
