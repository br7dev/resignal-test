import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resignal_test/custom_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        shape: BoxShape.circle,
                      ),
                      height: 60,
                      width: 60,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.black54,
                          size: 35,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.notifications,
                          color: Colors.black54,
                          size: 35,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi Marcus,',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'What do you want to do today?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.insights,
                      size: 40,
                      color: Colors.blueAccent[700],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ///
                    buildRichText('\$12,939.25\n'),
                    buildRichText('\$100,203.32\n')
                  ],
                ),
              ),

              ///  GRID STARTS HERE
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ///-----------------------------------------------------------------------
                            BuildCustomCard(
                                backgroundColor: Colors.red[100],
                                darkShade: Colors.red,
                                primaryText: 'Bill Pay\n',
                                secondaryText: 'Due on May 14th',
                                icon: Icons.event_note),
                            SizedBox(width: 20),
                            BuildCustomCard(
                                backgroundColor: Colors.purple[100],
                                darkShade: Colors.purple,
                                primaryText: 'Rewards\n',
                                secondaryText: '12,324 Points',
                                icon: Icons.card_giftcard),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BuildCustomCard(
                                backgroundColor: Colors.green[100],
                                darkShade: Colors.green,
                                primaryText: 'Statement\n',
                                secondaryText: 'June 2020\nAvailable',
                                icon: Icons.account_balance),
                            SizedBox(width: 20),
                            BuildCustomCard(
                                backgroundColor: Colors.blue[100],
                                darkShade: Colors.blue,
                                primaryText: 'Transfer\n',
                                secondaryText: 'Send & Request\nFunds',
                                icon: Icons.compare_arrows),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black26,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: 'Scan Receipt',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: 'Send & Request',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  RichText buildRichText(String amount) {
    return RichText(
      text: TextSpan(
        text: amount,
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        children: <TextSpan>[
          TextSpan(
            text: 'Checking Account\nBalance',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 14,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
