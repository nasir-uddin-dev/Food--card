import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  final double _maxSlide = 250.0;
  bool _canBeDragged = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(microseconds: 300),
    );
    _animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleAnimation() {
    _controller.isDismissed ? _controller.forward() : _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragStart: (details) {
        _canBeDragged = details.globalPosition.dx < 20;
      },

      onHorizontalDragUpdate: (details) {
        if (_canBeDragged) {
          double delta = details.primaryDelta! / _maxSlide;
          _controller.value += delta;
        }
      },

      onHorizontalDragEnd: (details) {
        if (_controller.isAnimating) return;

        final double flingVelocity =
            details.velocity.pixelsPerSecond.dx / _maxSlide;

        if (flingVelocity < 0.0) {
          _controller.forward();
        } else if (flingVelocity > 0.0) {
          _controller.reverse();
        } else {
          _controller.value < 0.5
              ? _controller.reverse()
              : _controller.forward();
        }
      },

      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Stack(
            children: <Widget>[
              _buildDrawer(),
              Transform(
                transform: Matrix4.identity()
                  ..translate(_animation.value * _maxSlide)
                  ..setEntry(3, 2, 0.001)
                  ..rotateY(_animation.value * -pi / 2),
                alignment: Alignment.centerLeft,
                child: _buildContent(),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildDrawer() {
    return Material(
      color: Colors.blueGrey[800],
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://avatar.iran.liara.run/public/6",
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Nasir Uddin",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "nasiruddin3954@gmail.com",
                style: TextStyle(color: Colors.white70),
              ),
              SizedBox(height: 40),
              _buildDrawerItem(Icons.home, "Home"),
              _buildDrawerItem(Icons.person, "Person"),
              _buildDrawerItem(Icons.settings, "Settings"),
              _buildDrawerItem(Icons.help, "Help"),
              Spacer(),
              _buildDrawerItem(Icons.logout, "Logout"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDrawerItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(title, style: TextStyle(color: Colors.white)),
      onTap: () {
        _toggleAnimation();
      },
    );
  }

  Widget _buildContent() {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "3D Navigation Drawer",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        leading: IconButton(
          onPressed: _toggleAnimation,
          icon: Icon(Icons.menu),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Main Content", style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleAnimation,
              child: Text("Toggle Drawer"),
            ),
          ],
        ),
      ),
    );
  }
}
