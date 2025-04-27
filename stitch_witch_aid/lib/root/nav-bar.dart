
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class NavBar extends StatelessWidget { //change to stateful if we use the index for pagination
  const NavBar({super.key});

//
//   @override
//   _MainScreenState createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   int _currentIndex = 0; // Tracks active tab

  // final List<Widget> _pages = [
  //   TodoPage(),
  //   ShoppingPage(),
  //   DiaryPage(),
  //   GoalsPage(),
  // ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xFFF5CE88),
          selectedFontSize: 16,
          unselectedFontSize: 14,
          iconSize: 35,
          selectedItemColor: const Color(0xFF2E8C8A),
          unselectedItemColor: const Color(0xFF104F4D),
          selectedLabelStyle: GoogleFonts.robotoSlab(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          unselectedLabelStyle: GoogleFonts.robotoSlab(
            fontWeight: FontWeight.normal,
            fontSize: 14,
          ),
          // currentIndex: _currentIndex,
          // onTap: (index) {
          //   setState(() {
          //     _currentIndex = index;
          //   });
          // },
          items: const [
            BottomNavigationBarItem(
                label: 'Counter', icon: Icon(Icons.alarm_add_outlined)),
            BottomNavigationBarItem(
                label: 'Inventory', icon: Icon(Icons.inventory_2_outlined)),
            BottomNavigationBarItem(
                label: 'Glossary', icon: Icon(Icons.book_outlined)),
            BottomNavigationBarItem(
                label: 'Projects', icon: Icon(Icons.list_outlined)),
          ],
        ),
      ),
    );
  }
}