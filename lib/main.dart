import 'dart:html';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.white,
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: GestureDetector(
              onTap: () {
                print('click');
              },
              onLongPress: () {
                print('Long Pressed');
              },
              child: Row(
                children: [
                  Text('아리동'),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
            actions: [
              IconButton(padding: EdgeInsets.zero, constraints: BoxConstraints(), icon: Icon(Icons.search), onPressed: () {}),
              IconButton(padding: EdgeInsets.zero, constraints: BoxConstraints(), icon: Icon(Icons.tune), onPressed: () {}),
              IconButton(padding: EdgeInsets.zero, constraints: BoxConstraints(), icon: SvgPicture.asset('assets/bell-svgrepo-com.svg'), onPressed: () {})
            ],
          ),
          body: ShopItem(),
          bottomNavigationBar: BottomAppBar(
              child: Container(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.phone),
                    Icon(Icons.message),
                    Icon(Icons.contact_page)
                  ],
                ),
              )
          ),
        )
    );
  }
}

class ShopItem extends StatelessWidget {
  const ShopItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.all(10),
      child: Row(
          children: [
            Flexible(
                child: Container(
                  width: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                  ),
                  child: Image.asset('assets/image_animal.jpg',),
                ),
                flex:0
            ),
            Flexible(
                child: Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('디지털 카메라\n카메라 팝니다.카메라 팝니다.카메라 팝니다.카메라 팝니다.카메라 팝니다.카메라 팝니다.카메라 팝니다.'),
                        Text('서울시 옥수동 금호동 3가'),
                        Row(
                          children: [
                            Icon(Icons.euro),
                            Text('7,000', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            //Icon(Icons.favorite, color: Colors.red, size: 15),
                            IconButton(padding: EdgeInsets.zero, constraints: BoxConstraints(), icon: Icon(Icons.favorite, color: Colors.red, size: 15), onPressed: () {}),
                            Text('4', textAlign: TextAlign.end),],
                        ),
                      ]
                  ),
                ),
                flex:5
            ),
          ]
      ),
    );
  }
}
