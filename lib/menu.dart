// ignore_for_file: prefer_const_constructors, must_be_immutable, unused_local_variable, avoid_print, sort_child_properties_last, avoid_unnecessary_containers, unused_import, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';
import 'package:my_college_app/About.dart';
import 'package:my_college_app/Library_books.dart';
import 'package:my_college_app/Notice_board_screen.dart';
import 'package:my_college_app/E_books.dart';
import 'package:my_college_app/Online_courses.dart';
import 'canteen.dart';
import 'package:share/share.dart';




class menuscreen extends StatelessWidget {
  List<String> buttonnames = [
    "Notice board",
    'E-books',
    'Online courses',
    'Canteen',
    'Library books',
    'About',
  ];
  List<Color> buttoncolors = [
    Color.fromARGB(255, 40, 97, 143),
    Color.fromARGB(255, 60, 143, 63),
    Color.fromARGB(255, 211, 112, 145),
    Color.fromARGB(255, 214, 106, 70),
    Color.fromARGB(255, 243, 147, 4),
    Color.fromARGB(255, 209, 236, 52),

  ];

  List<Icon> buttonicons = [
    Icon(Icons.message, color: Colors.white, size: 50),
    Icon(Icons.book_online, color: Colors.white, size: 50),
    Icon(Icons.book, color: Colors.white, size: 50),
    Icon(Icons.food_bank, color: Colors.white, size: 50),
    Icon(Icons.my_library_books, color: Colors.white, size: 50),
    Icon(Icons.other_houses,color: Colors.white,size: 50,)
  ];

  menuscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 70, 230, 193),
      appBar: AppBar(
        elevation: 10,
        title: Text("My College app"),
        centerTitle: true,
        
             
      ),
      
      drawer: Drawer( 
        
      child: ListView(
        children:  [

          UserAccountsDrawerHeader(accountName:Text('    abc'),
           accountEmail:Text('abc@gmail.com' ),
           currentAccountPicture: InkWell(
            onTap: (){
            
            },
           
           child: CircleAvatar(
            backgroundImage: AssetImage('assets/icon.png'),
            
            backgroundColor: Color.fromARGB(255, 247, 243, 243),
            
           ),
           ),
            decoration: BoxDecoration(
            color: Colors.blue,
            )
           ),
           ListTile(
            leading: Icon(Icons.person),
            title: Text(
              " My profile",
              style: TextStyle(fontSize: 15),
            ),
            onTap: (){},
           ),
           ListTile(
            leading: Icon(Icons.share),
            title: Text(
              "Share",
              style: TextStyle(fontSize: 15),
            ),
            onTap: (){
              Share.share('Check out this amazing app!');
              Navigator.pop(context);
            },
           ),
           ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              "Settings",
              style: TextStyle(fontSize: 15),
            ),
            onTap: (){},
           ),
           ListTile(
            leading: Icon(Icons.phone),
            title: Text(
              "Contact US",
              style: TextStyle(fontSize: 15),
            ),
            onTap: (){},
           ),
           ListTile(
            leading: Icon(Icons.logout),
            title: Text(
              "Signout",
              style: TextStyle(fontSize: 15),
            ),
            onTap: (){},
           ),
        ],
      )
      ),
      
      
      body: ListView(
        children: [
          /*Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(50),
            ),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 40, top: 40, right: 200),
          
            /*child: Text(
              "MENU",
              style: TextStyle(
                
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),*/
            
            
          ),*/
          Padding(
            padding: EdgeInsets.only(left: 20, top: 60, right: 20),
            child: Column(
              children: [
                GridView.builder(
                  itemCount: buttonnames.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.0,
                  ),
                  itemBuilder: (context, index) {
                    final buttonName = buttonnames[index];
                    final buttonIcon = buttonicons[index];
                    Widget destinationScreen;

                    if (index == 0) {
                      destinationScreen = NoticeBoard();
                    } else if (index == 1) {
                      destinationScreen = ebooks();
                    } else if (index == 2) {
                      destinationScreen = courses();
                    } else if (index == 3) {
                      destinationScreen = Canteen();
                    } else if (index == 4) {
                      destinationScreen = Librarybooks();
                    } else if (index == 5) {
                      destinationScreen = About();
                    } else {
                      // Handle the case where destinationScreen is not assigned
                      destinationScreen = Container(); // or any default screen
                    }
                
                    return InkResponse(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return destinationScreen;
                          }),
                        );
                      },
                      splashColor: Colors.transparent,// Set the splash color to transparent
                      containedInkWell: true, // This will ensure the ink response stays within the bounds of the icon
                      highlightShape: BoxShape.circle,
  
                      
                      child:Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: buttoncolors[index],
                              shape: BoxShape.circle,
                            ),
                           
                            child: Center(child: buttonIcon),
                          ),
                      
                          SizedBox(height: 10),
                          Text(
                            buttonName,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(179, 9, 2, 2)
                            ),
                          ),
                        ],
                      ),
    );
                      
                    
                  },
                ),
              ],
            ),
          ),
        ],
        ),
        );
}
}


