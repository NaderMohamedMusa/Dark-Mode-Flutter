import 'package:darkmode/settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dark Mode",textDirection: TextDirection.rtl,),
        actions: <Widget>[
          IconButton(
              icon: Icon(Provider.of<Settings>(context).isDarkMode
                  ? Icons.brightness_high
                  : Icons.brightness_low),
              onPressed: () {
                changeTheme(
                    Provider.of<Settings>(context, listen: false).isDarkMode
                        ? false
                        : true,
                    context);
              }),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Card(
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0),side: BorderSide(color: Colors.amber)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(child: Text("سبحان الله ",)),
            ),
          ),
          Card(
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0),side: BorderSide(color: Colors.amber)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(child: Text("الحمد لله والله واكبر ")),
            ),
          ),
          Card(
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0),side: BorderSide(color: Colors.amber)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(child: Text("لا حول ولا قوة الا بالله ")),
            ),
          ),
          Card(
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0),side: BorderSide(color: Colors.amber)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(child: Text("اللهم صلي وسلم وبارك علي سيدنا محمد ")),
            ),
          ),
          Card(
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0),side: BorderSide(color: Colors.amber)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(child: Text("يارب فرج عنا ما نحن فيه")),
            ),
          ),
          Card(
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0),side: BorderSide(color: Colors.amber)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text("الرحمن الرحيم ")),
            ),
          ),
          Card(
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0),side: BorderSide(color: Colors.amber)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(child: Text("بسم لله الذي لا يضر مع اسمه شئ في الارض ولا في السماء")),
            ),
          ),
          Card(
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0),side: BorderSide(color: Colors.amber)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(child: Text("الحمد لله عدد خلقه زرض نفسه وزنة عرشه ")),
            ),
          ),
          Card(
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0),side: BorderSide(color: Colors.amber)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(child: Text("لا اله الا انت سبحانك اني كنت من الظالمين ")),
            ),
          ),
          Card(
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0),side: BorderSide(color: Colors.amber)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(child: Text("لا اله الا الله ")),
            ),
          ),
          Card(
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0),side: BorderSide(color: Colors.amber)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(child: Text("الله واكبر ")),
            ),
          ),
          Card(
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0),side: BorderSide(color: Colors.amber)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(child: Text("الحمد لله")),
            ),
          ),
        ],
      ),
    );
  }

  void changeTheme(bool set, BuildContext context) {
    Provider.of<Settings>(context, listen: false).setDarkMode(set);
  }
}
