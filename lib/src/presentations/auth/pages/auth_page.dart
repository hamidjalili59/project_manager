import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool ob = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.onBackground,
        body: SizedBox(
          width: 1.sw,
          height: 1.sh,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 1.sw,
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(top:18.0.h,right: 18.w),
                        child: SizedBox(
                          width: 140.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                               Text('Signup',style: Theme.of(context).textTheme.labelLarge),
                              SizedBox(width: 10.w,),
                              Icon(
                                Icons.arrow_forward_rounded,
                                color: Colors.white,
                                size: 32.r,
                              ),
                            ],
                          ),
                        ),
                      )),
                ),
                SizedBox(height: 0.13.sh),
                SizedBox(
                  width: 0.74.sw,
                  child: Column(
                    children: [
                      Text(
                        'Here you can Login',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      SizedBox(height: 10.h),
                      const Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Let\'s join us ;)')),
                    ],
                  ),
                ),
                SizedBox(height: 100.h),
                SizedBox(
                  width: 0.75.sw,
                  child: TextFormField(
                    contextMenuBuilder: (context, editableTextState) {
                      final List<ContextMenuButtonItem> buttonItems =
                          editableTextState.contextMenuButtonItems;
                      buttonItems.insert(
                          0,
                          ContextMenuButtonItem(
                            label: 'from schedules',
                            onPressed: () {},
                          ));
                      return AdaptiveTextSelectionToolbar.buttonItems(
                        anchors: editableTextState.contextMenuAnchors,
                        buttonItems: buttonItems,
                      );
                    },
                    style: Theme.of(context).textTheme.titleLarge,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: Theme.of(context).textTheme.labelSmall,
                      floatingLabelAlignment: FloatingLabelAlignment.start,
                      fillColor: Theme.of(context).colorScheme.inverseSurface,
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(height: 35.h),
                SizedBox(
                  width: 0.75.sw,
                  child: TextFormField(
                    contextMenuBuilder: (context, editableTextState) {
                      final List<ContextMenuButtonItem> buttonItems =
                          editableTextState.contextMenuButtonItems;
                      buttonItems.insert(
                          0,
                          ContextMenuButtonItem(
                            label: 'from schedules',
                            onPressed: () {},
                          ));
                      return AdaptiveTextSelectionToolbar.buttonItems(
                        anchors: editableTextState.contextMenuAnchors,
                        buttonItems: buttonItems,
                      );
                    },
                    decoration: InputDecoration(
                      // helperText: 'Password',
                      labelText: 'Password',
                      labelStyle: Theme.of(context).textTheme.labelSmall,
                      // helperStyle: Theme.of(context).textTheme.labelSmall,
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              ob = !ob;
                            });
                          },
                          icon: Icon(
                            Icons.remove_red_eye,
                            color: Colors.white.withOpacity(0.6),
                          )),
                      fillColor: Theme.of(context).colorScheme.inverseSurface,
                      filled: true,
                    ),
                    obscureText: ob,
                  ),
                ),
                SizedBox(height: 35.h),
                MaterialButton(
                  color: Theme.of(context).colorScheme.primary,
                  onPressed: () {},
                  child: SizedBox(
                    width: 0.68.sw,
                    height: 40.h,
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.r,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Text(
                  'Forgot your password?',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                SizedBox(height: 30.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
