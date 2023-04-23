import 'package:flutter/material.dart';
import 'package:remarka_project/pages/menu_new.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  double _iconPosition = 16.0;
  bool _isHovered = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: 1.0, end: 1.2).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
      if (isHovered) {
        _iconPosition = 0;
      } else {
        _iconPosition = 16.0;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF6A5ACD), Color(0xFF303030)],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 25,
              right: 16,
              child: ScaleTransition(
                scale: _animation,
                child: Image.asset(
                  'lib/image/RemarkaPNG.png',
                  height: 150,
                  width: 150,
                ),
              ),
            ),
            Positioned(
              top: 50.0,
              left: _iconPosition,
              child: MouseRegion(
                onHover: (event) => _onHover(true),
                onExit: (event) => _onHover(false),
                child: GestureDetector(
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 40,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Menu_new()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}