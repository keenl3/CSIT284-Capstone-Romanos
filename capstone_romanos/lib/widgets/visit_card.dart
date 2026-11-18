import 'package:flutter/material.dart';
import 'package:capstone_romanos/models/clinical_visit.dart';
class VisitCard extends StatelessWidget {
 const VisitCard({
   super.key,
   required this.visit,
   required this.onToggleAttended,
 });
 final ClinicVisit visit;
 final VoidCallback onToggleAttended;
 String _formatTime(DateTime dt) {
   final hour = dt.hour % 12 == 0 ? 12 : dt.hour % 12;
   final minute = dt.minute.toString().padLeft(2, '0');
   final period = dt.hour >= 12 ? 'PM' : 'AM';
   return '$hour:$minute $period';
 }
 @override
 Widget build(BuildContext context) {
   return Card(
     margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
     child: ListTile(
       leading: CircleAvatar(
         backgroundColor: visit.isAttended ? const Color.fromARGB(255, 102, 76, 175) : Colors.orange,
         child: Icon(
           visit.isAttended ? Icons.check : Icons.medical_services,
           color: Colors.white,
         ),
       ),
       title: Text(
         '${visit.studentName} (${visit.studentId})',
         style: TextStyle(
           fontWeight: FontWeight.bold,
           decoration: visit.isAttended ? TextDecoration.lineThrough : null,
         ),
       ),
       subtitle: Text('${visit.symptom}\nLogged at ${_formatTime(visit.timestamp)}'),
       isThreeLine: true,
       trailing: Checkbox(
         value: visit.isAttended,
         onChanged: (_) => onToggleAttended(),
       ),
     ),
   );
 }
}