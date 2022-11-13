import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lime,
          titleTextStyle:
              GoogleFonts.wallpoet(fontSize: 16, color: Colors.black),
          title: Text('WELCOME',textAlign: TextAlign.start,),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(15),
            child: Container(
              margin: EdgeInsets.all(7),
              child: Text(
                'GÖKHAN EREN KAMER',
                style: GoogleFonts.wallpoet(fontSize: 16),),
              ),
            ),
          leading: Icon(
            Icons.account_circle_rounded,
            color: Colors.black,
            size: 45,
          ),
          actions: <Widget>[
            Icon(
              Icons.location_on_outlined,
              color: Colors.black,
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Text(
                'Eskişehir',style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
              ),
            )
          ],
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(10.0),
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          'Upcoming Conferences',
                          style: GoogleFonts.adventPro(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        child: Text(
                          ' View All>>',
                          style: GoogleFonts.abel(
                              fontSize: 13,
                              color: Colors.indigoAccent,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        decoration: const BoxDecoration(
                            border: Border(
                          bottom: BorderSide(),
                        )),
                        margin: EdgeInsets.all(15),
                        child: Image.asset(
                          'images/cnf_1.png',
                          width: 150,
                          height: 100,
                        ),
                      ),
                      Container(
                        child: Text('Applying Education in a'),
                      ),
                      Container(
                        child: Text('Complex World'),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            border: Border(
                          bottom: BorderSide(),
                        )),
                        margin: EdgeInsets.all(15),
                        child: Image.asset(
                          'images/cnf_2.png',
                          width: 150,
                          height: 100,
                        ),
                      ),
                      Container(
                        child: Text('HERITAGES: Past and'),
                      ),
                      Container(
                        child: Text('Present - Built and Social'),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Favorites',
                          style: GoogleFonts.adventPro(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(15),
                        decoration: const BoxDecoration(
                            border: Border(
                          bottom: BorderSide(),
                        )),
                        child: Image.asset(
                          'images/cnf_3.png',
                          width: 150,
                          height: 100,
                        ),
                      ),
                      Container(
                        child: Text(
                          'New Perspectives in',
                        ),
                      ),
                      Container(
                        child: Text(
                          'Science Education',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.black38,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.white70.withOpacity(.60),
                selectedFontSize: 14,
                unselectedFontSize: 14,
                onTap: (value) {},
                items: [
                  BottomNavigationBarItem(
                    label: 'Authors',
                    icon: Icon(Icons.person),
                  ),
                  BottomNavigationBarItem(
                    label: 'Papers',
                    icon: Icon(Icons.library_books),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.collections_bookmark_sharp),
                    label: 'Books',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    label: 'Search',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
