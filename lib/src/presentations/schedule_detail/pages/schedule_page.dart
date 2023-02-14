import 'package:base_project/src/config/constants/general_constants.dart';
import 'package:base_project/src/features/schedule_detail/domain/repositories/schedule_bloc/schedule_bloc_model.dart';
import 'package:base_project/src/presentations/schedule_detail/widgets/grid_pepar.dart';
import 'package:base_project/src/presentations/schedule_detail/widgets/grid_pepar_item.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            GestureDetector(
              dragStartBehavior: DragStartBehavior.start,
              onPanUpdate: (d) {
                setState(() {
                  GeneralConstants.offset += d.delta;
                });
              },
              child: Stack(
                children: [
                  SizedBox(
                    width: 1.sw,
                    height: 1.sh,
                    child: CustomPaint(
                      isComplex: true,
                      willChange: true,
                      painter: DotMatrixPainter(
                        gridUnitSize: 50,
                        background: Theme.of(context).colorScheme.background,
                        originAlignment: Alignment.center,
                        panOffset: GeneralConstants.offset,
                        zoomAlignment: Alignment.centerRight,
                        zoomPercent: GeneralConstants.zoomValue,
                        dividerColor: Colors.white60,
                        dotColor: Colors.white60,
                      ),
                    ),
                  ),
                  GridPaperItem(
                    scheduleBlocModel: ScheduleBlocModel(
                      xOffset: 0,
                      yOffset: 0,
                    ),
                    // body: 'android dev',
                    // title: 'Hamid Jalili',
                  ),
                  GridPaperItem(
                    scheduleBlocModel: ScheduleBlocModel(
                      xOffset: 260,
                      yOffset: 0,
                    ),
                    // body: 'backend dev',
                    // title: 'Mostafa Fahimi',
                  ),
                  GridPaperItem(
                    scheduleBlocModel: ScheduleBlocModel(
                      xOffset: 260,
                      yOffset: -150,
                    ),
                    // body: 'UI designer',
                    // title: 'Ehsan Akbari',
                  ),
                  GridPaperItem(
                    scheduleBlocModel: ScheduleBlocModel(
                      xOffset: 260,
                      yOffset: 150,
                    ),
                    // body: 'Team Leader',
                    // title: 'Hadi Sharifzade',
                  ),
                ],
              ),
            ),

            ///
            /// this section made for dialog
            ///

            ///
            /// this section made for zoomabling screen
            ///
            Positioned.fill(
              left: 0.05.sw,
              right: 0.82.sw,
              top: 0.78.sh,
              bottom: 0.05.sh,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32.r),
                    color: Theme.of(context).colorScheme.primary),
                width: 50,
                height: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        if (GeneralConstants.zoomValue < 2.5) {
                          setState(() {
                            GeneralConstants.zoomValue += 0.1;
                          });
                        }
                      },
                      icon: const Icon(
                        Icons.add_rounded,
                        color: Colors.white54,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        if (GeneralConstants.zoomValue > 0.5) {
                          setState(() {
                            GeneralConstants.zoomValue -= 0.1;
                          });
                        }
                      },
                      icon: const Icon(
                        Icons.remove_rounded,
                        color: Colors.white54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
