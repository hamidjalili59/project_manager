import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScheduleItemWidget extends StatelessWidget {
  final int index;
  const ScheduleItemWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: index == 0 ? 20.w : 45.w, vertical: 12.h),
      child: Center(
        child: SizedBox(
          width: 1.sw,
          height: index == 0 ? 125.h : 100.h,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xff242831),
                  border: Border.all(
                    width: 1.w,
                    style: index == 0 ? BorderStyle.solid : BorderStyle.none,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                width: 1.sw,
                height: index == 0 ? 150.h : 100.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(width: 10.w),
                    SizedBox(
                      width: index == 0 ? 170.w : 140.w,
                      child: Text(
                        'Incree',
                        style: index == 0
                            ? Theme.of(context).textTheme.displayMedium
                            : Theme.of(context).textTheme.displaySmall,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: index == 0 ? 60.w : 50.w,
                      height: 40.w,
                      decoration: BoxDecoration(
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.3),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Text(
                        (index + 1).toString(),
                        style: TextStyle(
                          fontSize: index == 0 ? 24.r : 18.r,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.more_vert_rounded,
                      size: index == 0 ? 32.r : 26.r,
                      color: Colors.white60,
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22.r),
                    bottomLeft: Radius.circular(18.r),
                  ),
                ),
                height: index == 0 ? 125.h : 100.h,
                width: 10.w,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
