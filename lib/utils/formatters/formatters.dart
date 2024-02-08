import 'package:intl/intl.dart';

class CustomFormatters{


  static  String dateFormatter(DateTime time){
return DateFormat('dd/MM/yyyy').format(time);
  }
}