// hpdata.dart

class ClassDetails {
  final String className;
  final String section;
  final String subject; // New property to hold the subject information

  ClassDetails(this.className, this.section, this.subject);
}

List<ClassDetails> classDetailsList = [
  ClassDetails('10th', 'A', 'Math'),
  ClassDetails('11th', 'B', 'Science'),
  // Add more class details as needed
];
