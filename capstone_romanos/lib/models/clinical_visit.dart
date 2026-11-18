class ClinicVisit {
 ClinicVisit({
   required this.id,
   required this.studentId,
   required this.studentName,
   required this.symptom,
   required this.timestamp,
   this.isAttended = false,
 });
 final String id;
 final String studentId;
 final String studentName;
 final String symptom;
 final DateTime timestamp;
 bool isAttended;
}
final List<ClinicVisit> dummyClinicVisits = [
 ClinicVisit(
   id: 'v1',
   studentId: '2026-00101',
   studentName: 'Ashira Jay Deriquito',
   symptom: 'Headache and mild dizziness',
   timestamp: DateTime.now().subtract(const Duration(minutes: 45)),
 ),
 ClinicVisit(
   id: 'v2',
   studentId: '2026-00102',
   studentName: 'Hans Gabriel Roble',
   symptom: 'Fever and body aches',
   timestamp: DateTime.now().subtract(const Duration(minutes: 40)),
 ),
 ClinicVisit(
   id: 'v3',
   studentId: '2026-00103',
   studentName: 'Paul Sherbel Parami',
   symptom: 'Stomach ache after lunch',
   timestamp: DateTime.now().subtract(const Duration(minutes: 60)),
 ),
 ClinicVisit(
   id: 'v4',
   studentId: '2026-00104',
   studentName: 'Frank Laurence Arbilon',
   symptom: 'Sprained ankle from PE class',
   timestamp: DateTime.now().subtract(const Duration(minutes: 40)),
 ),
 ClinicVisit(
   id: 'v5',
   studentId: '2026-00105',
   studentName: 'Nicholas Kenzi Pardede',
   symptom: 'Allergic skin rash on arms',
   timestamp: DateTime.now().subtract(const Duration(minutes: 20)),
 ),
 ClinicVisit(
   id: 'v6',
   studentId: '2026-00106',
   studentName: 'Julian Nicole Romanos',
   symptom: 'Sore throat and dry cough',
   timestamp: DateTime.now().subtract(const Duration(minutes: 30)),
 ),
 ClinicVisit(
   id: 'v7',
   studentId: '2026-00107',
   studentName: 'Leigh Malquisto',
   symptom: 'Toothache',
   timestamp: DateTime.now().subtract(const Duration(minutes: 20)),
 ),
 ClinicVisit(
   id: 'v8',
   studentId: '2026-00108',
   studentName: 'Delancey Devin',
   symptom: 'Minor paper cut on finger',
   timestamp: DateTime.now().subtract(const Duration(minutes: 10)),
 ),
 ClinicVisit(
   id: 'v9',
   studentId: '2026-00109',
   studentName: 'Blair Willows',
   symptom: 'Nausea and fatigue',
   timestamp: DateTime.now().subtract(const Duration(minutes: 50)),
 ),
 ClinicVisit(
   id: 'v10',
   studentId: '2026-00110',
   studentName: 'Justin Nabunturan',
   symptom: 'Nosebleed',
   timestamp: DateTime.now().subtract(const Duration(minutes: 20)),
 ),
];