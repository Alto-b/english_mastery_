import 'package:avatar_glow/avatar_glow.dart';
import 'package:english_mastery/presentation/gemini_view/gemini.dart';
import 'package:flutter/material.dart';

class HomeSearchWidget extends StatelessWidget {
  const HomeSearchWidget({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: const Duration(milliseconds: 800),
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const GeminiPage(),
            ),
          );
        },
        child: Hero(
          tag: "searchBar",
          flightShuttleBuilder: _flightShuttleBuilder,
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              height: 60,
              width: screenWidth * 0.9,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Colors.lightBlueAccent,
                    Color.fromARGB(255, 33, 111, 246)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueAccent.withOpacity(0.5),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 28,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Ask me something...",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  const Spacer(),
                  AvatarGlow(
                    child: Image.asset(
                      'assets/logo/gemini.png',
                      height: 25,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _flightShuttleBuilder(
    BuildContext flightContext,
    Animation<double> animation,
    HeroFlightDirection flightDirection,
    BuildContext fromHeroContext,
    BuildContext toHeroContext,
  ) {
    return Material(
      type: MaterialType.transparency,
      child: toHeroContext.widget,
    );
  }
}
