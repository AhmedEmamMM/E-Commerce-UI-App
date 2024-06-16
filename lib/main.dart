import 'package:e_commernce_ui/core/routes/app_routes.dart';
import 'package:e_commernce_ui/core/routes/routes_name.dart';
import 'package:e_commernce_ui/core/styling/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

// height of the emulator is : 890.2857142857143,
// width of the emulator is : 411.42857142857144,
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme(),
          initialRoute: RoutesName.onBoarding,
          onGenerateRoute: AppRoutes().onGenerate,
        );
      },
    );
  }
}
