import 'package:angel_framework/angel_framework.dart';
import 'package:angel_framework/http.dart';


main() async {
  var app = Angel();

  app.get('/', (req, res) {
    res.write("Hello world!");
  });

  var http = AngelHttp(app);

  await http.startServer('localhost', 3000);
}
