import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
        backgroundColor: const Color.fromARGB(255, 115, 150, 160),
        foregroundColor: const Color.fromARGB(255, 237, 233, 233),

        actions: [
          IconButton(
            onPressed: () {},
            tooltip: "Search",
            icon: Icon(Icons.search),
          ),

          IconButton(
            onPressed: () {},
            tooltip: "Settings",
            icon: Icon(Icons.settings),
          ),
        ],
      ),

      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 115, 150, 160),
              ),
              accountName: Text("Shuvo"),
              accountEmail: Text("durjoydasshuvo@gmail.com"),
              currentAccountPicture: Icon(
                Icons.person,
                size: 50,
                color: Colors.white,
              ),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {},
            ),

            Divider(),

            ListTile(
              leading: Icon(Icons.contacts),
              title: Text("Contact"),
              onTap: () {},
            ),

            Spacer(),

            ListTile(
              leading: Icon(Icons.person),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.person)),
              title: Text("Profile"),
              onTap: () {},
            ),
          ],
        ),
      ),

      backgroundColor: const Color.fromARGB(255, 192, 212, 218),

      body: Column(
        children: [
          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 115, 150, 160),
                  foregroundColor: Colors.white,
                  side: BorderSide(color: Colors.white),
                  fixedSize: Size(110, 40),
                ),
                child: Text("Text Button"),
              ),

              SizedBox(width: 8),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 115, 150, 160),
                  foregroundColor: Colors.white,
                  side: BorderSide(color: Colors.white),
                ),
                child: Text("Elevated Button"),
              ),

              SizedBox(width: 8),

              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 170, 195, 201),
                  foregroundColor: const Color.fromARGB(255, 60, 80, 85),
                  side: BorderSide(
                    color: const Color.fromARGB(255, 115, 150, 160),
                  ),
                ),
                child: Text("Outlined Button"),
              ),

              SizedBox(width: 8),

              IconButton(
                onPressed: () {},
                tooltip: "Icon Button",
                style: IconButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 115, 150, 160),
                  foregroundColor: Colors.white,
                  side: BorderSide(color: Colors.white),
                  fixedSize: Size(110, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                icon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.touch_app),
                    SizedBox(width: 4),
                    Text("Icon Button"),
                  ],
                ),
              ),
            ],
          ),

          Expanded(
            child: Center(
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text(
                  "Hello Flutter",
                  style: GoogleFonts.aleo(
                    textStyle: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 60, 80, 85),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   tooltip: "Add",
      //   backgroundColor: const Color.fromARGB(255, 115, 150, 160),
      //   foregroundColor: Colors.white,
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
