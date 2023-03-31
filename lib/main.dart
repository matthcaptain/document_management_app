import 'package:flutter/material.dart';
import 'app/routes/app_routes.dart';

void main() {
  runApp(const DocumentDetailsApp());
}

class DocumentDetailsApp extends StatelessWidget {
  const DocumentDetailsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: AppRouter.router.routeInformationProvider,
      routeInformationParser: AppRouter.router.routeInformationParser,
      routerDelegate: AppRouter.router.routerDelegate,
      title: 'Document Details',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.black),
    );
  }
}
