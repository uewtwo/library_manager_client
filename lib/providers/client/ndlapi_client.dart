import 'package:dio/dio.dart';
import 'package:xml/xml.dart';

class NdlApiClient {
  Future getBookByIsbn(String isbn) async {
    // ISBNかどうかの判定
    bool isIsbn = new RegExp(r'^978').hasMatch(isbn);
    if (isIsbn) {
      var dio = Dio();
      try {
        Response response = await dio.get(
            'http://iss.ndl.go.jp/api/sru?operation=searchRetrieve&query=isbn=${isbn}');
        // 一部の記号が実体参照になっているため置換する
        final strXml = response.data
            .replaceAll('&lt;', '<')
            .replaceAll('&gt;', '>')
            .replaceAll('&quot;', '"');

        final bookXml = XmlDocument.parse(strXml);

        if (bookXml.findAllElements('numberOfRecords').first.text != '0') {
          return Future.value(bookXml.findAllElements('dc:title').first.text);
        } else {
          // isbnから本の情報が得られない場合
          return Future.error('ISBNで本の情報が得られませんでした\n ${isbn}');
        }
      } catch (error) {
        return Future.error(error);
      }
    } else {
      return Future.error('ISBNではありません');
    }
  }
}
