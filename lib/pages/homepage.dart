import 'package:flutter/material.dart';
import 'package:navbar/pages/roadmap_page.dart';
import 'package:navbar/pages/settings_page.dart';
import 'package:navbar/pages/wallet_page.dart';
import 'package:navbar/pages/main_page.dart';
import 'package:navbar/pages/projects_page.dart';

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
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar (
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: SizedBox(
              child: IconButton(
                icon: new Image.asset('assets/images/IconLogo/accueil.png',
                color: _selectedIndex == 0 ? Colors.black : Colors.black54,
                ),
              ),
              height: 40,
              width: 40,
            ),
            title: Text("Home",
              style: TextStyle(
                color: _selectedIndex == 0 ? Colors.black : Colors.black54,
              ),
            ),
          ),

          BottomNavigationBarItem(
            icon: SizedBox(
              child: IconButton(
                icon: new Image.asset('assets/images/IconLogo/investissement.png',
                  color: _selectedIndex == 1 ? Colors.black : Colors.black54,
                ),
              ),
              height: 45,
              width: 45,
            ),
            title: Text("Projects",
              style: TextStyle(
                color: _selectedIndex == 1 ? Colors.black : Colors.black54,
              ),
            ),
          ),

          BottomNavigationBarItem(
            icon: SizedBox(
              child: IconButton(
                icon: new Image.asset('assets/images/IconLogo/wallet.png',
                  color: _selectedIndex == 2 ? Colors.black : Colors.black54,
                ),
              ),
              height: 40,
              width: 40,
            ),
            title: Text("Wallet",
              style: TextStyle(
                color: _selectedIndex == 2 ? Colors.black : Colors.black54,
              ),
            ),
          ),


          BottomNavigationBarItem(
            icon: SizedBox(
              child: IconButton(
                icon: new Image.asset('assets/images/IconLogo/emplacement.png',
                  color: _selectedIndex == 3 ? Colors.black : Colors.black54,
                ),
              ),
              height: 45,
              width: 45,
            ),
            title: Text("RoadMap",
              style: TextStyle(
                color: _selectedIndex == 3 ? Colors.black : Colors.black54,
              ),
            ),
          ),


          BottomNavigationBarItem(
            icon: SizedBox(
              child: IconButton(
                icon: new Image.asset('assets/images/IconLogo/settings.png',
                  color: _selectedIndex == 4 ? Colors.black : Colors.black54,
                ),
              ),
              height: 40,
              width: 40,
            ),
            title: Text("Settings",
              style: TextStyle(
                color: _selectedIndex == 4 ? Colors.black : Colors.black54,
              ),
            ),
          ),
        ],
      ),
    );
  }
}