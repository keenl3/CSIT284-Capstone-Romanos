import 'package:flutter/material.dart';
import 'package:capstone_romanos/models/clinical_visit.dart';
class LogVisitScreen extends StatefulWidget {
 const LogVisitScreen({super.key});
 @override
 State<LogVisitScreen> createState() => _LogVisitScreenState();
}
class _LogVisitScreenState extends State<LogVisitScreen> {
 final _studentIdController = TextEditingController();
 final _studentNameController = TextEditingController();
 final _symptomController = TextEditingController();
 void _submitVisit() {
   if (_studentIdController.text.trim().isEmpty ||
       _studentNameController.text.trim().isEmpty ||
       _symptomController.text.trim().isEmpty) {
     return;
   }
   final newVisit = ClinicVisit(
     id: DateTime.now().millisecondsSinceEpoch.toString(),
     studentId: _studentIdController.text.trim(),
     studentName: _studentNameController.text.trim(),
     symptom: _symptomController.text.trim(),
     timestamp: DateTime.now(),
   );
   Navigator.of(context).pop(newVisit);
 }
 @override
 void dispose() {
   _studentIdController.dispose();
   _studentNameController.dispose();
   _symptomController.dispose();
   super.dispose();
 }
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: const Text('Log Clinic Visit')),
     body: Padding(
       padding: const EdgeInsets.all(16),
       child: Column(
         children: [
           TextField(
             controller: _studentIdController,
             decoration: const InputDecoration(labelText: 'Student ID'),
           ),
           const SizedBox(height: 12),
           TextField(
             controller: _studentNameController,
             decoration: const InputDecoration(labelText: 'Student Name'),
           ),
           const SizedBox(height: 12),
           TextField(
             controller: _symptomController,
             decoration: const InputDecoration(labelText: 'Symptom'),
           ),
           const SizedBox(height: 24),
           SizedBox(
             width: double.infinity,
             child: FilledButton(
               onPressed: _submitVisit,
               child: const Text('Submit Visit'),
             ),
           ),
         ],
       ),
     ),
   );
 }
}