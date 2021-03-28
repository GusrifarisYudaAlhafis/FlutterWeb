part of 'pages.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget navItem({String title, int index}) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Color(
                  0xff1d1e3c,
                ),
                fontWeight:
                    index == selectedIndex ? FontWeight.w500 : FontWeight.w300,
              ),
            ),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  20,
                ),
                color: index == selectedIndex
                    ? Color(
                        0xfffe998d,
                      )
                    : Colors.transparent,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'background.png',
            width: MediaQuery.of(
              context,
            ).size.width,
            height: MediaQuery.of(
              context,
            ).size.height,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 100,
              vertical: 30,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'logo.png',
                      width: 72,
                      height: 40,
                    ),
                    Row(
                      children: [
                        navItem(
                          title: 'Guides',
                          index: 0,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(
                          title: 'Pricing',
                          index: 1,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(
                          title: 'Team',
                          index: 2,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(
                          title: 'Stories',
                          index: 3,
                        ),
                      ],
                    ),
                    Image.asset(
                      'button_account.png',
                      width: 163,
                      height: 53,
                    ),
                  ],
                ),
                SizedBox(
                  height: 76,
                ),
                Image.asset(
                  'illustration.png',
                  width: 550,
                ),
                SizedBox(
                  height: 84,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'icon_scroll.png',
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Text(
                      'Scroll to Learn More',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
