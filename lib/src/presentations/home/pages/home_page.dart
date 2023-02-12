import 'package:base_project/src/config/routes/router.dart';
import 'package:base_project/src/injectable/injectable.dart';
import 'package:base_project/src/presentations/home/widgets/drawer_widget.dart';
import 'package:base_project/src/presentations/home/widgets/schedule_item.dart';
import 'package:base_project/src/presentations/home/widgets/tabbar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:base_project/src/config/constants/general_constants.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final GlobalKey _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _key,
        backgroundColor: Theme.of(context).colorScheme.onBackground,

        /// test
        drawer: const CustomDrawerWidget(),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              surfaceTintColor: Theme.of(context).colorScheme.onBackground,
              snap: true,
              pinned: true,
              floating: true,
              backgroundColor: Theme.of(context).colorScheme.onBackground,
              expandedHeight: 0.3.sh,
              titleSpacing: 0,
              flexibleSpace: FlexibleSpaceBar(
                expandedTitleScale: 1,
                centerTitle: true,
                titlePadding: EdgeInsets.zero,
                title: SizedBox(
                  width: 0.75.sw,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TabbarItemWidget(
                          tapbarPos: GeneralConstants.tabbarPos,
                          title: 'All',
                        ),
                        TabbarItemWidget(
                          tapbarPos: GeneralConstants.tabbarPos,
                          title: 'Open',
                        ),
                        TabbarItemWidget(
                          tapbarPos: GeneralConstants.tabbarPos,
                          title: 'Done',
                        ),
                      ],
                    ),
                  ),
                ),
                background: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        width: 1.sw,
                        height: 40.h,
                        child: GeneralConstants.isSearchMode
                            ? Padding(
                                padding: EdgeInsets.symmetric(horizontal: 42.w),
                                child: CupertinoSearchTextField(
                                  prefixInsets: EdgeInsets.only(right: 5.w),
                                  suffixIcon: Icon(
                                    Icons.close_rounded,
                                    color: Colors.white30,
                                    size: 24.r,
                                  ),
                                  suffixMode: OverlayVisibilityMode.editing,

                                  ///  TODO: range search bayad khakestary beshe az tarigh theme
                                  /// alan rango khakestari mikonam vali bad ba theme jay gozin beshe
                                  placeholder: 'Search ...',
                                  placeholderStyle: TextStyle(
                                      color: Colors.white30, fontSize: 18.r),
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 18.r),

                                  backgroundColor: Colors.transparent,
                                  prefixIcon: Icon(
                                    Icons.search_rounded,
                                    color: Colors.white30,
                                    size: 26.r,
                                  ),
                                ),
                              )
                            : Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 30.0.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        _key.currentState;
                                      },
                                      icon: Icon(
                                        Icons.menu_rounded,
                                        color: Colors.white,
                                        size: 28.r,
                                      ),
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          GeneralConstants.isSearchMode = true;
                                        },
                                        icon: Icon(
                                          Icons.search_rounded,
                                          color: Colors.white,
                                          size: 28.r,
                                        )),
                                  ],
                                ),
                              ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: SizedBox(
                        width: 1.sw,
                        height: 80.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Schedule',
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                            SizedBox(width: 100.w),
                            InkWell(
                              onTap: (){
                                getIt.get<AppRouter>().pushNamed('/schedule');
                              },
                              child: Container(
                                height: 55.r,
                                width: 55.r,
                                decoration: BoxDecoration(
                            
                                    /// TODO: in rang bayad az theme badashte shavad
                                    color: Theme.of(context).colorScheme.primary,
                                    borderRadius: BorderRadius.circular(12.r)),
                                child: Icon(
                                  Icons.add_rounded,
                                  size: 36.r,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Expanded(flex: 2, child: SizedBox()),
                  ],
                ),
              ), //FlexibleSpaceBar
              leading: const SizedBox(),
            ), //
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 10,
                (context, index) {
                  return ScheduleItemWidget(index: index);
                },
              ), //SliverChildBuildDelegate
            ) //SliverList
          ],
        ),
        //             ///  TODO: range search bayad khakestary beshe az tarigh theme
        //             /// alan rango khakestari mikonam vali bad ba theme jay gozin beshe
        //                     /// TODO: in rang bayad az theme badashte shavad
        //                     color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
