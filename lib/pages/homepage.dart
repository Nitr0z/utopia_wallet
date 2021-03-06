import 'package:flutter/material.dart';
import 'package:navbar/pages/constants.dart';
import 'file:///C:/Users/theop/Desktop/utopia_wallet/lib/pages/screens/roadmap_page.dart';
import 'file:///C:/Users/theop/Desktop/utopia_wallet/lib/pages/screens/settings_page.dart';
import 'file:///C:/Users/theop/Desktop/utopia_wallet/lib/pages/screens/wallet_page.dart';
import 'file:///C:/Users/theop/Desktop/utopia_wallet/lib/pages/screens/main_page.dart';
import 'file:///C:/Users/theop/Desktop/utopia_wallet/lib/pages/screens/projects_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();
  List<Widget> _screens = [MainPage(), ProjectsPage(), WalletPage(), RoadmapPage(), SettingsPage()];

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
      // menu ------------------------------------------------------------------ //
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
      ),
      bottomNavigationBar: BottomNavigationBar (
        backgroundColor: secondaryColor,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: SizedBox(
              child: IconButton(
                icon: new Image.asset('assets/images/IconLogo/accueil.png',
                color: _selectedIndex == 0 ? primaryColor : Colors.white,
                ),
              ),
              height: 40,
              width: 40,
            ),
            title: Text("Home",
              style: TextStyle(
                color: _selectedIndex == 0 ? primaryColor : Colors.white,
              ),
            ),
          ),

          BottomNavigationBarItem(
            icon: SizedBox(
              child: IconButton(
                icon: new Image.asset('assets/images/IconLogo/investissement.png',
                  color: _selectedIndex == 1 ? primaryColor : Colors.white,
                ),
              ),
              height: 45,
              width: 45,
            ),
            title: Text("Projects",
              style: TextStyle(
                color: _selectedIndex == 1 ? primaryColor : Colors.white,
              ),
            ),
          ),

          BottomNavigationBarItem(
            icon: SizedBox(
              child: IconButton(
                icon: new Image.asset('assets/images/IconLogo/wallet.png',
                  color: _selectedIndex == 2 ? primaryColor : Colors.white,
                ),
              ),
              height: 40,
              width: 40,
            ),
            title: Text("Wallet",
              style: TextStyle(
                color: _selectedIndex == 2 ? primaryColor : Colors.white,
              ),
            ),
          ),


          BottomNavigationBarItem(
            icon: SizedBox(
              child: IconButton(
                icon: new Image.asset('assets/images/IconLogo/emplacement.png',
                  color: _selectedIndex == 3 ? primaryColor : Colors.white,
                ),
              ),
              height: 45,
              width: 45,
            ),
            title: Text("RoadMap",
              style: TextStyle(
                color: _selectedIndex == 3 ? primaryColor : Colors.white,
              ),
            ),
          ),


          BottomNavigationBarItem(
            icon: SizedBox(
              child: IconButton(
                icon: new Image.asset('assets/images/IconLogo/settings.png',
                  color: _selectedIndex == 4 ? primaryColor : Colors.white,
                ),
              ),
              height: 40,
              width: 40,
            ),
            title: Text("Settings",
              style: TextStyle(
                color: _selectedIndex == 4 ? primaryColor : Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}