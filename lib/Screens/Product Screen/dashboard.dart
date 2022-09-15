import 'package:biker_app/Screens/Biker%20Profile/login.dart';
import 'package:biker_app/Screens/Biker%20Profile/updateprofile.dart';
import 'package:biker_app/Screens/Product%20Screen/History.dart';
import 'package:biker_app/Screens/Product%20Screen/Homepage.dart';
import 'package:biker_app/Screens/Product%20Screen/Profile.dart';
import 'package:biker_app/Screens/Product%20Screen/wallet.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';
import 'package:getwidget/types/gf_toggle_type.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
  ));
}

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key, this.index}) : super(key: key);
  final index;

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var _currentIndex;
  void initState() {
    super.initState();
    print(widget.index);
    if (widget.index == null) {
      _currentIndex = 0;
    } else {
      _currentIndex = widget.index;
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: _currentIndex == 0
          ? AppBar(
              backgroundColor: Colors.blue,
              actions: [
                GFToggle(
                  onChanged: (val) {
                    setState(() {});
                  },
                  value: true,
                  type: GFToggleType.android,
                ),
              ],
            )
          : null,
      drawer: Drawer(
        backgroundColor: Colors.green[200],
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text(
                "Demo Name",
                style: TextStyle(fontSize: 16.0),
              ),
              accountEmail:
                  const Text("abc@gmail.com", style: TextStyle(fontSize: 16.0)),
              currentAccountPicture: Image.network(
                  ("https://e7.pngegg.com/pngimages/1008/377/png-clipart-computer-icons"
                      "-avatar-user-profile-avatar-heroes-black-hair.png")),
              decoration: BoxDecoration(color: Colors.green.shade400),
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UpdateProfile()));
              },
              leading: const Icon(
                Icons.account_circle_rounded,
                size: 28.0,
                color: Colors.black,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 19.0,
              ),
              title: const Text("Profile Update"),
            ),
            Padding(padding: EdgeInsets.only(top: 10.0)),
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),
              onTap: () {},
              leading: Icon(
                Icons.lock,
                size: 28.0,
                color: Colors.black,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 19.0,
              ),
              title: Text("Change password"),
            ),
            Padding(padding: EdgeInsets.only(top: 10.0)),
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),
              onTap: () {},
              leading: Icon(
                Icons.privacy_tip_outlined,
                size: 28.0,
                color: Colors.black,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 19.0,
              ),
              title: Text("Terms and Condition"),
            ),
            Padding(padding: EdgeInsets.only(top: 10.0)),
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    content: const Text("Would you want to Log Out?"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("No"),
                      ),
                      TextButton(
                        onPressed: () {
                          // auth temp = auth();
                          // temp.deleteJWT();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Loginscreen()));
                        },
                        child: const Text("Yes"),
                      )
                    ],
                  ),
                );
              },
              leading: Icon(
                Icons.logout_rounded,
                size: 28.0,
                color: Colors.black,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 19.0,
              ),
              title: Text("Logout"),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: _currentIndex == 0
              ? Homepage()
              : _currentIndex == 1
                  ? Walletpage() //History()
                  : _currentIndex == 2
                      ? History()
                      : Bikerupdatedetails(),
        ),
      ),
      bottomNavigationBar: Container(
        constraints: const BoxConstraints(minHeight: 50),
        margin: const EdgeInsets.only(
          left: 18,
          top: 2,
          bottom: 10,
          right: 18,
        ),
        height: screenHeight * .071,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.green.withOpacity(.10),
              blurRadius: 30,
              offset: const Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: BottomNavigationBar(
          elevation: 8.0,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          selectedItemColor: Colors.green,
          showUnselectedLabels: true,
          unselectedLabelStyle: TextStyle(color: Colors.black87),
          onTap: (value) {
            // Respond to item press.
            setState(() {
              _currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black87,
                size: 25.0,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
                label: "Wallet",
                icon: Icon(Icons.wallet_giftcard,
                    color: Colors.black87, size: 25)),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.history,
                color: Colors.black87,
                size: 25,
              ),
              label: "History",
            ),
            BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(Icons.account_circle_rounded,
                    color: Colors.black87, size: 25)),
          ],
        ),
      ),
    );
  }
}
