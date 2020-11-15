import 'package:dio/dio.dart';
import 'package:xml/xml.dart';
import 'package:xml2json/xml2json.dart';
import 'dart:convert';

class NdlapiClient {
  Future get_book_by_isbn(String isbn) async {
    var dio = Dio();
    //try {
    Response response = await dio.get(
        'http://iss.ndl.go.jp/api/sru?operation=searchRetrieve&query=isbn=${isbn}');
    // 一部の記号が実体参照になっているため置換する
    final strXml = response.data
        .replaceAll('&lt;', '<')
        .replaceAll('&gt;', '>')
        .replaceAll('&quot;', '"');

    final bookXml = XmlDocument.parse(strXml);
    // isbnから本の情報が得られない場合
    if (bookXml.findAllElements('numberOfRecords').first.text == '0') {
      return Future.value('ISBNで本の情報が得られませんでした\n ${isbn}');
    } else {
      return Future.value(bookXml.findAllElements('dc:title').first.text);
    }
  }
}
