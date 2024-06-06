import 'package:admin/booklocker.dart';
import 'package:admin/homepage.dart';
import 'package:admin/searchbookings.dart';
import 'package:admin/utils/constatnts/Image_strings.dart';
import 'package:admin/utils/constatnts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class admin extends StatefulWidget {
  const admin({super.key});

  @override



  State<admin> createState() => _adminState();
}

class _adminState extends State<admin> {

  int _selectedIndex=0;
  bool light = true;
  PageController _pageController=PageController();





  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }



 Future<bool> _onWillPop() async {
    if (_selectedIndex != 0) {
      setState(() {
        _selectedIndex = 0;
      });

      return false;
    }

    return true;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    
    _pageController.animateToPage(
      index,
      duration:const Duration(milliseconds: 50),
      curve: Curves.easeInOut,
    );
  }




  @override
  Widget build(BuildContext context) {
      return  WillPopScope(
        onWillPop: _onWillPop,
        child: Scaffold(
                  backgroundColor: Tcolors.scaffoldclr_admin,
                  

        body:PageView(
        physics:const NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: <Widget>[
         const HomeScreen(),
          BookLocker(),
         const SearchScreen(),
 
          Container(child: Text(""),),
        ],
      ), 
 
              bottomNavigationBar: NavigationBarTheme(
                data: NavigationBarThemeData(
                  indicatorColor: Tcolors.Appwhite.withOpacity(.2),
                  indicatorShape: RoundedRectangleBorder(
                    side: BorderSide.none,
                          borderRadius: BorderRadius.circular(8), // Adjust the radius as needed
                  ),  
                  labelTextStyle: MaterialStateProperty.all(
                    
                  const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  color: Tcolors.Appwhite
                  )
                  )
                ),
               
                child: NavigationBar(
                  backgroundColor:Tcolors.bottomnavbgclr,
                  selectedIndex: _selectedIndex,
                  onDestinationSelected: _onItemTapped,                   
                    destinations: [
                      const NavigationDestination(icon: Icon(Icons.home,size:30,color: Colors.white,), label: 'Home'),
                      NavigationDestination(icon: SvgPicture.asset(TImages.book_locker), label: 'Book locker'),
                      NavigationDestination(icon:  SvgPicture.asset(TImages.search_bar), label: 'Search'),
                      NavigationDestination(icon: SvgPicture.asset(TImages.scan_qr), label: 'Scan QR'), 
                ]),
              ),
                       
          ),
      );
   
  }
}



class custom_card extends StatelessWidget {
  final Widget? child ;
  final double  height;
  final EdgeInsetsGeometry? margin;


  const custom_card({
    super.key,
    required this.child,
    this.height=150,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
        margin:margin ,
        width: double.infinity,
        height: height,
        decoration: BoxDecoration(
        color: Tcolors.Appwhite,
        borderRadius: BorderRadius.circular(15),
                    boxShadow:const [
    BoxShadow(
    color: Tcolors.boxshadowclr, // Equivalent to #0000000D
    offset: Offset(0, 5), // Horizontal and vertical offsets
    blurRadius: 5.0, // Blur radius
    spreadRadius: 0.0, // Spread radius
    ),
          ],
    
      ),
      child: child,  
    );
  }
}