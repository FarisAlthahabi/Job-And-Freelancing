import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          centerTitle: true,
          title: Container(
            width: 205,
            height: 25,
            decoration: BoxDecoration(
                color: Color.fromRGBO(222, 233, 246, 1),
                borderRadius: BorderRadius.circular(5)),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search_rounded),
                  prefixIconColor: Color.fromRGBO(140, 135, 135, 1),
                  hintText: 'Find a job',
                  hintStyle: TextStyle(
                      height: 3,
                      color: Color.fromRGBO(140, 135, 135, 1),
                      fontSize: 8.91,
                      fontWeight: FontWeight.w700)),
            ),
          ),
          actions: [
            SizedBox(
              width: 25,
            ),
            Badge(
              child: Icon(
                Icons.notifications_none_outlined,
                size: 30,
              ),
            ),
            SizedBox(
              width: 25,
            ),
          ],
        ),
        body: Column(
          children: [
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  children: [
                    Text(
                      'Jobs for you',
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 20.64,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Based on your Career',
                      style: TextStyle(
                          color: Color.fromRGBO(110, 109, 109, 1),
                          fontSize: 9.64,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.sort,
                    size: 30,
                  )),
            ),
            Expanded(
                child: Container(
              width: double.maxFinite,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text(
                      'Based on your Career',
                      style: TextStyle(
                          color: Color.fromRGBO(110, 109, 109, 1),
                          fontSize: 9.64,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                    ListTile(
                      leading: Icon(Icons.favorite),
                      title: Container(
                        height: 189,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(248, 248, 248, 1),
                          borderRadius: BorderRadius.circular(11.42),
                        ),
                        child: Column(children: [
                          Row(children: [
                            Text(
                      'Ui Ux Designer',
                      style: TextStyle(
                          color: Color.fromRGBO(26, 82, 147, 1),
                          fontSize: 4.64,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.expand , )),
                          ],),
                          Row(children: [
                            Icon(Icons.document_scanner_outlined),
                            Text(
                      'Uzone',
                      style: TextStyle(
                          color: Color.fromRGBO(26, 82, 147, 1),
                          fontSize: 4.64,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.expand)),
                          ],),
                          Row(children: [
                            Icon(Icons.location_on_outlined),
                            Text(
                      'Ui Ux Designer',
                      style: TextStyle(
                          color: Color.fromRGBO(26, 82, 147, 1),
                          fontSize: 4.64,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                    Icon(Icons.location_on_outlined),
                            Text(
                      'Ui Ux Designer',
                      style: TextStyle(
                          color: Color.fromRGBO(26, 82, 147, 1),
                          fontSize: 4.64,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.expand)),
                          ],),
                          Row(children: [
                            Icon(Icons.document_scanner_outlined),
                            Text(
                      'Ui Ux Designer',
                      style: TextStyle(
                          color: Color.fromRGBO(26, 82, 147, 1),
                          fontSize: 4.64,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Ui Ux Designer',
                      style: TextStyle(
                          color: Color.fromRGBO(26, 82, 147, 1),
                          fontSize: 4.64,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.expand)),
                          ],),
                        ],),
                      ),
                    )
                  ],
                );
              }),
            ))
          ],
        ),
      ),
    );
  }
}
