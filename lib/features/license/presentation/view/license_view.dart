import 'package:flutter/material.dart';

class License extends StatefulWidget {
  const License({super.key});

  @override
  State<License> createState() => _LicenseState();
}

class _LicenseState extends State<License> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Flexible(
        fit: FlexFit.tight,
        child: Container(
          color: Colors.blueAccent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height / 10,
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.menu,
                            size: 35,
                          ),
                          onPressed: () {
                            _scaffoldKey.currentState
                                ?.openDrawer(); // Access the ScaffoldState
                          },
                        ),
                        const SizedBox(width: 16),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Driver's Registration",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "A step to virtualization",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.blueGrey,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Stack(
                          children: [
                            IconButton(
                              iconSize: 25,
                              icon: const Icon(Icons.notifications),
                              onPressed: () {},
                            ),
                            Positioned(
                              right: 7,
                              top: 7,
                              child: Container(
                                width: 12,
                                height: 11,
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Welcome to Driver's Registration App",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 250,
                    height: 200,
                    decoration: const BoxDecoration(),
                    child: ClipRRect(
                      child: Image.asset('assets/images/122.png'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'You have no license to show.',
                    style: TextStyle(fontSize: 17, fontStyle: FontStyle.italic),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              color: Colors.blueGrey,
              height: MediaQuery.of(context).size.height / 15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "  Menu",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.person)),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.logout)),
                    ],
                  )
                ],
              ),
            ),
            ListTile(
              title: const Text('BlueBook Information'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: const Text('License Information'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: const Text('View Fine'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            const Spacer(),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    padding: const EdgeInsets.fromLTRB(120, 12, 120, 12)),
                child: const Text(
                  "Logout",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
