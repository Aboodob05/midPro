import 'package:midpro/import.dart';
class BottomBar extends StatefulWidget {
  int indx;
   BottomBar({required this.indx});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      currentIndex: widget.indx,
      items: [
        SalomonBottomBarItem(
          icon: Icon(Icons.home_outlined),
          title: Text("Home"),
          selectedColor: Colors.red,
        ),
        SalomonBottomBarItem(
          icon: Icon(Icons.search_rounded),
          title: Text("Search"),
          selectedColor: Colors.red,
        ),
        SalomonBottomBarItem(
          icon: Icon(Icons.person_outline),
          title: Text("Profile"),
          selectedColor: Colors.red,
        ),
        SalomonBottomBarItem(
          icon: Icon(Icons.logout),
          title: Text("Logout"),
          selectedColor: Colors.red,
        ),
      ],
      onTap: (v) {
        setState(() {
          widget.indx = v;
          switch (v) {
            case 0:
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Startscreen()), (rout) => false);
              break;
            case 1:
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Finddonors()));
              break;
            case 2:
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen()));
              break;
            case 3:
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => LoginScreen()), (rout) => false);
              break;
          }
        });
      },

    );
  }
}
