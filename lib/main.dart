import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskpro/productdetails.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Myaap(),
  ));
}
class Myaap extends StatefulWidget {
  const Myaap({Key? key}) : super(key: key);
  @override
  State<Myaap> createState() => _MyaapState();
}
class _MyaapState extends State<Myaap> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProductScreen(),
    );
  }
}
