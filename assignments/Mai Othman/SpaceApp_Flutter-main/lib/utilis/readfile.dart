import 'package:excel/excel.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;

/* Your ......other important..... code here */
class ReadDate{
  Future<void> readFile()async {
    ByteData data = await rootBundle.load('assets/files/planet_details.xlsx');
    var bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    var excel = Excel.decodeBytes(bytes);

    for (var table in excel.tables.keys) {
      print(table); //sheet Name
      print(excel.tables[table]?.maxColumns);
      print(excel.tables[table]?.maxRows);
      for (var row in excel.tables[table]!.rows) {
        print('$row');
      }
    }
  }
  }

