import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stitch_witch_aid/counter/counter.dart';
import 'package:stitch_witch_aid/glossary/glossary-screen.dart';
import 'package:stitch_witch_aid/inventory/inventory-screen.dart';
import 'package:stitch_witch_aid/root/brand-colors.dart';

import '../projects/projects-screen.dart';

class NavBar extends StatefulWidget {
  const NavBar(this.callback, {super.key});

  // Callback function used to change current page
  final Function(Widget) callback;

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentPage = 0; // Tracks active tab

  final List<Widget> _pages = [Counter(), InventoryScreen(), GlossaryScreen(), ProjectsScreen()];

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: BrandColors.purpleLighter,
        selectedFontSize: 16,
        unselectedFontSize: 14,
        iconSize: 35,
        selectedItemColor: const Color(0xFF742CBF),
        unselectedItemColor: const Color(0xFF391467),
        selectedLabelStyle: GoogleFonts.robotoSlab(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        unselectedLabelStyle: GoogleFonts.robotoSlab(
          fontWeight: FontWeight.normal,
          fontSize: 14,
        ),
        currentIndex: _currentPage,
        onTap: (index) {
          setState(() {
            _currentPage = index;
            widget.callback(_pages[_currentPage]);

          });
        },
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
    );
  }
}
