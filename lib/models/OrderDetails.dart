
import 'package:hive/hive.dart';
part '../services/OrderDetails.g.dart';

  
@HiveType(typeId: 1) 
class OrderDetails{
 
  @HiveField(0)
  String orderno;
 
  @HiveField(1)
  String orderamount;
  
  OrderDetails({this.orderno, this.orderamount});
 
}