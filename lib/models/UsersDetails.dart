
import 'package:hive/hive.dart';
part '../services/UsersDetails.g.dart';
   
 
@HiveType(typeId: 0) 
class UsersDetails{
  
  @HiveField(0)
  String userName;
 
  @HiveField(1)
  String password;
 
 
  UsersDetails({this.userName, this.password});
 
}