import 'package:case_study_1/core/routing/my_route.dart';
import 'package:flutter/material.dart';

void main() {
  MaterialApp materialApp = MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: DashboardPage(),
    onGenerateInitialRoutes: (_) => MyRoute.initialRoutes,
    onGenerateRoute: MyRoute.onNavigateByName,
  );
  runApp(materialApp);
}
