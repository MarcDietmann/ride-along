import 'package:flutter/cupertino.dart';
import 'package:ride_along/_old/find_ticket_screen.dart';
import 'package:ride_along/_old/full_width_text_button.dart';
import 'package:ride_along/_old/share_ticket_screen.dart';
import 'package:ride_along/_old/your_rides_screen.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FullWidthTextButton(
            label: "Teile dein Ticket",
            onTap: () => Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const ShareTicketScreen(),
              ),
            ),
          ),
          FullWidthTextButton(
            label: "Finde einen Gönner",
            onTap: () => Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const FindTicketScreen(),
              ),
            ),
          ),
          FullWidthTextButton(
            label: "Deine nächste Fahrt",
            onTap: () => Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const YourNextRideScreen(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
