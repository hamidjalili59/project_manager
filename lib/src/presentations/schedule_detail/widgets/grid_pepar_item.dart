import 'package:base_project/src/config/constants/general_constants.dart';
import 'package:base_project/src/features/schedule_detail/domain/repositories/schedule_bloc/schedule_bloc_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridPaperItem extends StatelessWidget {
  final ScheduleBlocModel scheduleBlocModel;
  const GridPaperItem({
    super.key,
    required this.scheduleBlocModel,
  });

  @override
  Widget build(BuildContext context) {
    Offset offset = Offset(scheduleBlocModel.xOffset!, scheduleBlocModel.yOffset!);
    return Transform.translate(
      offset: GeneralConstants.offset + (offset * GeneralConstants.zoomValue),
      child: Transform.scale(
        scale: GeneralConstants.zoomValue,
        origin: Offset.zero,
        alignment: Alignment.center,
        child: Container(
          width: 120,
          height: 50,
          padding: EdgeInsets.all(5.r),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              border: Border.all(color: const Color(0xffFF005D), width: 3.w),
              borderRadius: BorderRadius.circular(8.r)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'title',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontSize: 12.r),
              ),
              Text(
                'body',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(fontSize: 8.r),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
