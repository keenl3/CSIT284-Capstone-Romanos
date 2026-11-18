import 'package:flutter/material.dart';
import 'package:capstone_romanos/models/clinical_visit.dart';
import '../widgets/visit_card.dart';
import 'log_visit_screen.dart';
class NurseQueueScreen extends StatefulWidget {
 const NurseQueueScreen({super.key});
 @override
 State<NurseQueueScreen> createState() => _NurseQueueScreenState();
}
class _NurseQueueScreenState extends State<NurseQueueScreen> {
 final List<ClinicVisit> _visits = List.of(dummyClinicVisits);
 Future<void> _navigateToLogVisit() async {
   final newVisit = await Navigator.of(context).push<ClinicVisit>(
     MaterialPageRoute(builder: (ctx) => const LogVisitScreen()),
   );
   if (newVisit != null) {
     setState(() {
       _visits.insert(0, newVisit);
     });
   }
 }
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text('Clinic Visit Queue'),
     ),
     body: ListView.builder(
       itemCount: _visits.length,
       itemBuilder: (ctx, index) {
         final visit = _visits[index];
         return VisitCard(
           visit: visit,
           onToggleAttended: () {
             setState(() {
               visit.isAttended = !visit.isAttended;
             });
           },
         );
       },
     ),
     floatingActionButton: FloatingActionButton.extended(
       onPressed: _navigateToLogVisit,
       icon: const Icon(Icons.add),
       label: const Text('Log Visit'),
     ),
   );
 }
}