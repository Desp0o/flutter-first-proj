import 'package:tkt/pages/first_page.dart';
import 'package:tkt/pages/second_page.dart';

getRoutes() {
  return {
    FirstPage.route: (context) => FirstPage(),
    SecondPage.route: (context) => SecondPage()
  };
}
