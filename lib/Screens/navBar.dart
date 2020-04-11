import 'package:Off_Dash/allFiles.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedIndex = 2;
  Widget _showPage;

  final Account _account = Account();
  final Search _search = Search();
  final Home2 _home2 = Home2();
  final Cart _cart = Cart();
  final Wallet _wallet = Wallet();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _wallet;
      case 1:
        return _search;
      case 2:
        return _home2;
      case 3:
        return _cart;
      case 4:
        return _account;

      default:
        return Center(
          child: Text("Page Not found"),
        );
    }
  }

  @override
  void initState() {
    super.initState();
    _showPage = _pageChooser(2);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: FFNavigationBar(
          theme: FFNavigationBarTheme(
            barBackgroundColor: Colors.white,
            selectedItemBackgroundColor: mainColor,
            selectedItemIconColor: Colors.black,
            selectedItemLabelColor: Colors.black,
            showSelectedItemShadow: true,
            barHeight: 50,
          ),
          selectedIndex: selectedIndex,
          onSelectTab: (index) {
            setState(() {
              print(index);
              selectedIndex = index;
              _showPage = _pageChooser(index);
            });
          },
          items: [
            FFNavigationBarItem(
              iconData: Icons.payment,
              label: 'Payment',
            ),
            FFNavigationBarItem(
              iconData: Icons.search,
              label: 'Search',
            ),
            FFNavigationBarItem(
              iconData: Icons.home,
              label: 'Home',
            ),
            FFNavigationBarItem(
              iconData: Icons.shopping_cart,
              label: 'Cart',
            ),
            FFNavigationBarItem(
              iconData: Icons.account_circle,
              label: 'Account',
            ),
          ],
        ),
        body: Container(
          // child: _pageChooser(_page),
          child: _showPage,
        ),
      ),
    );
  }
}
