
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);
  @override
  State<ProductScreen> createState() => ProductScreenState();
}
class ProductScreenState extends State<ProductScreen> {
  int count=0;
  int count1=0;
  int count2=0;
  int count3=0;
  int count4=0;
  int count5=0;
  int count6=0;
  bool cheack=true;
  bool cheack1=true;
  bool cheack2=true;
  bool cheack3=true;
  bool cheack4=true;
  bool cheack5=true;
  bool cheack6=true;
  List<String?> itemsimage=
  ["https://m.media-amazon.com/images/I/41HCTUUp2IL._SX300_SY300_QL70_FMwebp_.jpg",
    "https://m.media-amazon.com/images/I/71pnr89o6hL._SL1500_.jpg",
    "https://m.media-amazon.com/images/I/812816L+HkL._AC_UL480_FMwebp_QL65_.jpg",
    "https://m.media-amazon.com/images/I/61kYAIcb8mL._AC_UL480_FMwebp_QL65_.jpg",
    "https://m.media-amazon.com/images/I/71aELqwnO6L._AC_UL480_FMwebp_QL65_.jpg",
    "https://m.media-amazon.com/images/I/71JIA49IdYL._AC_UL480_FMwebp_QL65_.jpg"
  ];
  List<int> price=[34,62,32,43,54,54];
  List<String> name=["Breads","Wheat","Milk","Soup","Frozen Foods","Cheese"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Products")),
        actions: <Widget>[
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    // do something
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text("${count ?? ""}",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Card(
                  elevation: 5,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/5,
                    child: Row(
                      children: [
                        SizedBox(
                            width: 170,
                            height: 300,
                            child: Card(
                                elevation: 5,
                                child: Image.network("${itemsimage[0]}"))),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${name[0]}",style: TextStyle(fontSize: 15),),
                            Text("₹${price[0]}",style: TextStyle(fontSize: 20),),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:cheack1 ? ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.deepOrange),
                                  ),
                                  onPressed: (){
                                    count+=1;
                                    count1+=1;
                                    cheack1=false;
                                    setState(() {
                                    });
                                  }, child: Text("Add")) :
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      if (count1 == 1) {
                                        setState(() {
                                          cheack1=true;
                                          count1 = 0;
                                          count-=1;


                                        });
                                      } else {
                                        setState(() {
                                          count1 -= 1;
                                        });
                                      }
                                    },
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      color: Colors.black,
                                      child: Center(
                                          child: Text(
                                            "-",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )),
                                    ),
                                  ),
                                  Text(
                                    "${count1}",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        count1 += 1;
                                      });
                                    },
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      color: Colors.black,
                                      child: Center(
                                          child: Text("+",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold))),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
            ),
            Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Card(
                  elevation: 5,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/5,
                    child: Row(
                      children: [
                        SizedBox(
                            width: 170,
                            height: 300,
                            child: Card(
                                elevation: 5,
                                child: Image.network("${itemsimage[1]}"))),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${name[1]}",style: TextStyle(fontSize: 15),),
                            Text("₹${price[1]}",style: TextStyle(fontSize: 20),),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:cheack2 ? ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.deepOrange),
                                  ),
                                  onPressed: (){
                                    count+=1;
                                    count2+=1;
                                    cheack2=false;
                                    setState(() {
                                    });
                                  }, child: Text("Add")) :
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      if (count2 == 1) {
                                        setState(() {
                                          cheack2=true;
                                          count2 = 0;
                                          count-=1;

                                        });
                                      } else {
                                        setState(() {
                                          count2 -= 1;
                                        });
                                      }
                                    },
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      color: Colors.black,
                                      child: Center(
                                          child: Text(
                                            "-",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )),
                                    ),
                                  ),
                                  Text(
                                    "${count2}",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        count2 += 1;
                                      });
                                    },
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      color: Colors.black,
                                      child: Center(
                                          child: Text("+",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold))),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
            ),
            Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Card(
                  elevation: 5,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/5,
                    child: Row(
                      children: [
                        SizedBox(
                            width: 170,
                            height: 300,
                            child: Card(
                                elevation: 5,
                                child: Image.network("${itemsimage[2]}"))),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${name[2]}",style: TextStyle(fontSize: 15),),
                            Text("₹${price[2]}",style: TextStyle(fontSize: 20),),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:cheack3 ? ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.deepOrange),
                                  ),
                                  onPressed: (){
                                    count+=1;
                                    count3+=1;
                                    cheack3=false;
                                    setState(() {
                                    });
                                  }, child: Text("Add")) :
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      if (count3 == 1) {
                                        setState(() {
                                          cheack3=true;
                                          count-=1;
                                          count3 = 0;

                                        });
                                      } else {
                                        setState(() {
                                          count3 -= 1;
                                        });
                                      }
                                    },
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      color: Colors.black,
                                      child: Center(
                                          child: Text(
                                            "-",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )),
                                    ),
                                  ),
                                  Text(
                                    "${count3}",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        count3 += 1;
                                      });
                                    },
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      color: Colors.black,
                                      child: Center(
                                          child: Text("+",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold))),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
            ),
            Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Card(
                  elevation: 5,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/5,
                    child: Row(
                      children: [
                        SizedBox(
                            width: 170,
                            height: 300,
                            child: Card(
                                elevation: 5,
                                child: Image.network("${itemsimage[3]}"))),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${name[3]}",style: TextStyle(fontSize: 15),),
                            Text("₹${price[3]}",style: TextStyle(fontSize: 20),),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:cheack4 ? ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.deepOrange),
                                  ),
                                  onPressed: (){
                                    count+=1;
                                    count4+=1;
                                    cheack4=false;
                                    count-=1;
                                    setState(() {
                                    });
                                  }, child: Text("Add")) :
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      if (count4 == 1) {
                                        setState(() {
                                          cheack4=true;
                                          count4 = 0;

                                        });
                                      } else {
                                        setState(() {
                                          count4 -= 1;
                                        });
                                      }
                                    },
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      color: Colors.black,
                                      child: Center(
                                          child: Text(
                                            "-",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )),
                                    ),
                                  ),
                                  Text(
                                    "${count4}",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        count4 += 1;
                                      });
                                    },
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      color: Colors.black,
                                      child: Center(
                                          child: Text("+",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold))),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
            ),
            Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Card(
                  elevation: 5,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/5,
                    child: Row(
                      children: [
                        SizedBox(
                            width: 170,
                            height: 300,
                            child: Card(
                                elevation: 5,
                                child: Image.network("${itemsimage[4]}"))),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${name[4]}",style: TextStyle(fontSize: 15),),
                            Text("₹${price[4]}",style: TextStyle(fontSize: 20),),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:cheack5 ? ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.deepOrange),
                                  ),
                                  onPressed: (){
                                    count+=1;
                                    count5+=1;
                                    cheack5=false;
                                    setState(() {
                                    });
                                  }, child: Text("Add")) :
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      if (count5 == 1) {
                                        setState(() {
                                          cheack5=true;
                                          count5 = 0;
                                          count-=1;

                                        });
                                      } else {
                                        setState(() {
                                          count5 -= 1;
                                        });
                                      }
                                    },
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      color: Colors.black,
                                      child: Center(
                                          child: Text(
                                            "-",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )),
                                    ),
                                  ),
                                  Text(
                                    "${count5}",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        count5 += 1;
                                      });
                                    },
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      color: Colors.black,
                                      child: Center(
                                          child: Text("+",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold))),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
            ),
            Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Card(
                  elevation: 5,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/5,
                    child: Row(
                      children: [
                        SizedBox(
                            width: 170,
                            height: 300,
                            child: Card(
                                elevation: 5,
                                child: Image.network("${itemsimage[5]}"))),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${name[5]}",style: TextStyle(fontSize: 15),),
                            Text("₹${price[5]}",style: TextStyle(fontSize: 20),),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:cheack6 ? ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.deepOrange),
                                  ),
                                  onPressed: (){
                                    count+=1;
                                    count6+=1;
                                    cheack6=false;
                                    setState(() {
                                    });
                                  }, child: Text("Add")) :
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      if (count6 == 1) {
                                        setState(() {
                                          cheack6=true;
                                          count6 = 0;
                                          count-=1;
                                        });
                                      } else {
                                        setState(() {
                                          count6 -= 1;
                                        });
                                      }
                                    },
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      color: Colors.black,
                                      child: Center(
                                          child: Text(
                                            "-",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )),
                                    ),
                                  ),
                                  Text(
                                    "${count6}",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        count6 += 1;
                                      });
                                    },
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      color: Colors.black,
                                      child: Center(
                                          child: Text("+",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold))),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
