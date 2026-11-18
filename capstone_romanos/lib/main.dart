import 'package:flutter/material.dart';
import 'screens/nurse_queue_screen.dart';
void main() {
 runApp(const ClinicVisitApp());
}
class ClinicVisitApp extends StatelessWidget {
 const ClinicVisitApp({super.key});
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: 'Clinic Visit Log',
     theme: ThemeData(
       colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 168, 2, 71)),
       useMaterial3: true,
     ),
     home: const NurseQueueScreen(),
   );
 }
}