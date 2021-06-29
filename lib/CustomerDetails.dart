
import 'package:hive/hive.dart';
part 'CustomerDetails.g.dart';

 
 
@HiveType(typeId: 0)
class CustomerDetails{
 
  @HiveField(0)
  String customerName;
 
  @HiveField(1)
  String address1;
 
  @HiveField(2)
  String address2;

  @HiveField(3)
  String address3;
 
  CustomerDetails({this.customerName, this.address1, this.address2, this.address3});
 
}