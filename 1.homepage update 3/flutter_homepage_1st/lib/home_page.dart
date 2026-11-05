import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            tooltip: "Open menu",
            icon: Icon(Icons.menu),
          ),
        ),
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
          // Container(
          //   height: 40, //can make large container . suitable for column
          //   width: 40,
          //   margin: EdgeInsets.all(20),
          //   padding: EdgeInsets.all(10),
          //   decoration: BoxDecoration(
          //     color: const Color.fromARGB(255, 115, 150, 160),
          //     borderRadius: BorderRadius.circular(20),
          //   ),
          // ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
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
              onTap: () => Navigator.pop(context),
            ),

            Divider(),

            ListTile(
              leading: Icon(Icons.contacts),
              title: Text("Contact"),
              onTap: () {},
            ),

            ListTile(
              leading: Icon(Icons.credit_card),
              title: Text("Card Page"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/card');
              },
            ),
            ListTile(
              leading: Icon(Icons.calculate),
              title: Text("Converter Page"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/converter');
              },
            ),

            ListTile(
              leading: const Icon(Icons.list),
              title: const Text("Listview Page"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/listview');
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, '/auth');
              },
            ),
          ],
        ),
      ),

      backgroundColor: const Color.fromARGB(255, 192, 212, 218),

      body: Column(
        children: [
          SizedBox(height: 20),
          // can use diffeent widget
          Center(
            //raw or colum
            child: Column(
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

                SizedBox(height: 8),

                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Elevated Button Pressed"),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 115, 150, 160),
                    foregroundColor: Colors.white,
                    side: BorderSide(color: Colors.white),
                  ),
                  child: Text("Elevated Button"),
                ),

                SizedBox(height: 8),

                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 170, 195, 201),
                    foregroundColor: const Color.fromARGB(255, 60, 80, 85),
                    side: BorderSide(
                      color: const Color.fromARGB(255, 239, 243, 244),
                    ),
                  ),
                  child: Text("Outlined Button"),
                ),

                SizedBox(height: 8),

                IconButton(
                  onPressed: () {},
                  tooltip: "Icon Button",
                  style: IconButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 115, 150, 160),
                    foregroundColor: Colors.white,
                    side: BorderSide(color: Colors.white),
                    fixedSize: Size(150, 40),
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

                //experiment
                Container(
                  height: 300,
                  width: 300,
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 115, 150, 160),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Text(
                        'Hello Flutter',
                        style: GoogleFonts.aleo(
                          textStyle: const TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 60, 80, 85),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Expanded(
          //   child: Center(
          //     child: MouseRegion(
          //       cursor: SystemMouseCursors.click,
          //       child: Text(
          //         "Hello Flutter",
          //         style: GoogleFonts.aleo(
          //           textStyle: TextStyle(
          //             fontSize: 45,
          //             fontWeight: FontWeight.bold,
          //             color: const Color.fromARGB(255, 60, 80, 85),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
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
