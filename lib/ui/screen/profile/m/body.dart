import 'package:developerfect_app/utils/ext/responsive_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_framework/responsive_framework.dart' as rf;

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          rf.ResponsiveRowColumn(
            rowMainAxisAlignment: MainAxisAlignment.center,
            rowPadding: const EdgeInsets.all(30),
            columnPadding: const EdgeInsets.all(30),
            layout: context.isDisplaySmallerThanDesktop
                ? rf.ResponsiveRowColumnType.COLUMN
                : rf.ResponsiveRowColumnType.ROW,
            children: const [
              rf.ResponsiveRowColumnItem(
                rowFlex: 1,
                child: Placeholder(
                  color: Colors.amber,
                ),
              ),
              rf.ResponsiveRowColumnItem(
                rowFlex: 2,
                child: Placeholder(
                  color: Colors.green,
                ),
              ),
              rf.ResponsiveRowColumnItem(
                rowFlex: 3,
                child: Placeholder(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          // ResponsiveGridView.builder(gridDelegate: gridDelegate, itemBuilder: itemBuilder)
          Visibility(
            visible: false,
            child: Center(
              child: rf.ResponsiveGridView.builder(
                gridDelegate: rf.ResponsiveGridDelegate(
                  crossAxisSpacing: 1.w,
                  crossAxisExtent: 30.w,
                  mainAxisSpacing: 1.w,
                ),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.red,
                  );
                },
                itemCount: 100,
              ),
            ),
          ),
          Center(
            child: GridView.count(
              crossAxisCount: rf.ResponsiveValue(
                context,
                defaultValue: 3,
                conditionalValues: [
                  const rf.Condition.smallerThan(
                    name: rf.MOBILE,
                    value: 1,
                  ),
                  const rf.Condition.smallerThan(
                    name: rf.TABLET,
                    value: 2,
                  ),
                  const rf.Condition.largerThan(
                    name: rf.MOBILE,
                    value: 3,
                  ),
                  const rf.Condition.largerThan(
                    name: rf.TABLET,
                    value: 5,
                  ),
                ],
              ).value,
              controller: new ScrollController(keepScrollOffset: false),
              shrinkWrap: true,
              children: List.generate(100, (index) {
                return Container(
                  margin: EdgeInsets.all(4.w),
                  color: Colors.green,
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
