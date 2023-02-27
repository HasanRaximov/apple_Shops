import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AppleshopUI(),
    );
  }
}

class AppleshopUI extends StatefulWidget {
  const AppleshopUI({Key? key}) : super(key: key);

  @override
  State<AppleshopUI> createState() => _AppleshopUIState();
}

class _AppleshopUIState extends State<AppleshopUI> {
  List _itemList = [
    'asset/images/image_1.jpeg',
    "asset/images/img_3.png",
    "asset/images/img.png",
    "asset/images/img_1.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD84315),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: .0,
        title: const Text(
          "Apple Products",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 7),
              child: Container(
                width: 39,
                height: 10,
                margin: EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 229, 185, 41),
                      borderRadius: BorderRadius.circular(13)),
                  child: Center(
                      child: Text(
                    "7",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
                ),
              )),
        ],
      ),
      drawer: Drawer(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 17),
              child: Container(
                width: double.infinity,
                height: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(
                          "asset/images/img_2.png",
                        ),
                        fit: BoxFit.cover)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Lifestyle sale",
                      style: TextStyle(fontSize: 28, color: Colors.white),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      width: 230,
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        color: Colors.white,
                        onPressed: () {},
                        child: Text(
                          "Shop now",
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(18),
              child: GridView.count(
                  crossAxisCount: 1,
                  children:
                      _itemList.map((item) => widgetphoto(item)).toList()),
            ))
          ],
        ),
      ),
    );
  }
}

Widget widgetphoto(String item) {
  return Card(
    color: Colors.transparent,
    elevation: .0,
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(item), fit: BoxFit.cover)),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                CupertinoIcons.heart_fill,
                color: Colors.red,
                size: 32,
              ),
            )
          ]),
    ),
  );
}
