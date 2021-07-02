import 'package:hive/hive.dart';
part '../services/CheckListDetails.g.dart';

@HiveType(typeId: 3) 
class CheckListDetails {
   

  @HiveField(0)
  String question;

  @HiveField(1)
  String check;

  @HiveField(2)
  String close;

  @HiveField(3)
  String remove;

  @HiveField(4)
  String camera;

  @HiveField(5)
  String message;

  CheckListDetails(
      { 
      this.question,
      this.check,
      this.close,
      this.remove,
      this.camera,
      this.message});
}
