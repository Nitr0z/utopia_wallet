import 'package:flutter/material.dart';
import 'package:navbar/pages/settings_page.dart';
import 'package:navbar/pages/wallet_page.dart';
import 'package:navbar/pages/main_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();
  List<Widget> _screens = [MainPage(), WalletPage(), SettingsPage()];

  int _selectedIndex = 0;
  void _onPageChanged(int index) {
      setState(() {
        _selectedIndex = index;
      });
  }
  
  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar (
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: SizedBox(
              child: IconButton(
                icon: new Image.asset('assets/images/IconLogo/accueil.png',
                color: _selectedIndex == 0 ? Colors.white : Colors.grey,
                ),
              ),
              height: 40,
              width: 40,
            ),
            title: Text("Home",
              style: TextStyle(
                color: _selectedIndex == 0 ? Colors.white : Colors.grey,
              ),
            ),
          ),

          BottomNavigationBarItem(
            icon: SizedBox(
              child: IconButton(
                icon: new Image.asset('assets/images/IconLogo/wallet.png',
                  color: _selectedIndex == 1 ? Colors.white : Colors.grey,
                ),
              ),
              height: 40,
              width: 40,
            ),
            title: Text("Projects",
              style: TextStyle(
                color: _selectedIndex == 1 ? Colors.white : Colors.grey,
              ),
            ),
          ),

          BottomNavigationBarItem(
            icon: SizedBox(
              child: IconButton(
                icon: new Image.asset('assets/images/IconLogo/wallet.png',
                  color: _selectedIndex == 1 ? Colors.white : Colors.grey,
                ),
              ),
              height: 40,
              width: 40,
            ),
            title: Text("Raodmap",
              style: TextStyle(
                color: _selectedIndex == 1 ? Colors.white : Colors.grey,
              ),
            ),
          ),


          BottomNavigationBarItem(
            icon: SizedBox(
              child: IconButton(
                icon: new Image.asset('assets/images/IconLogo/settings.png',
                  color: _selectedIndex == 2 ? Colors.white : Colors.grey,
                ),
              ),
              height: 40,
              width: 40,
            ),
            title: Text("Settings",
              style: TextStyle(
                color: _selectedIndex == 2 ? Colors.white : Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}