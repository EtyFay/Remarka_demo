import 'package:flutter/material.dart';
import 'package:remarka_project/pages/menu_new.dart';
import 'package:remarka_project/models/staff_list.dart';

class Staff extends StatefulWidget {
  @override
  _StaffState createState() => _StaffState();
}

class _StaffState extends State<Staff> with SingleTickerProviderStateMixin {
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
            Positioned(
              top: 50,
              left: 100,
              right: 200,
              bottom: 30,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListView.builder(
                  itemCount: containerParams.length,
                  itemBuilder: (context, index) {
                    Map<String, dynamic> params = containerParams[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => params['routes']));
                      },
                      child: Container(
                        height: params['height'],
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: params['colors'],
                          ),
                          borderRadius: params['borderRadius'],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Text(
                                  params['text'],
                                  style: TextStyle(color: Colors.white, fontSize: 20),
                                ),
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                child: Image.asset(
                                  params['routesIMG'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}