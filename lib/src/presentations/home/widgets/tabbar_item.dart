import 'package:base_project/src/config/constants/general_constants.dart';
import 'package:base_project/src/features/home/domain/models/enums/tabbar_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabbarItemWidget extends StatelessWidget {
  final String title;
  final TabbarEnum tapbarPos;
  const TabbarItemWidget({
    required this.tapbarPos,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        if (title == 'All') {
          GeneralConstants.tabbarPos = TabbarEnum.all;
        } else if (title == 'Open') {
          GeneralConstants.tabbarPos = TabbarEnum.open;
        } else {
          GeneralConstants.tabbarPos = TabbarEnum.done;
        }
      },
      child: Container(
        color: Theme.of(context).colorScheme.onBackground,
        width: 95.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: tapbarPos.name == title.toLowerCase()
                      ? Theme.of(context).colorScheme.primary
                      : Colors.white38,
                  fontSize: 16.r),
            ),
            Divider(
              color: tapbarPos.name == title.toLowerCase()
                  ? Theme.of(context).colorScheme.primary
                  : Colors.white38,
            ),
          ],
        ),
      ),
    );
  }
}
