import 'package:flutter/material.dart';



class LandingPageSelector extends StatelessWidget {
  final List<AdventureType> adventures = [
    AdventureType('Hiking', Icons.terrain, Colors.green, 'assets/hiking.jpg'),
    AdventureType('Camping', Icons.nature_people, Colors.brown, 'assets/camping.jpg'),
    AdventureType('Water Sports', Icons.waves, Colors.blue, 'assets/watersports.jpg'),
    AdventureType('Winter Sports', Icons.ac_unit, Colors.blueGrey, 'assets/winter.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Your Adventure'),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.9,
        ),
        itemCount: adventures.length,
        itemBuilder: (context, index) {
          return AdventureCard(
            adventure: adventures[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AdventureLandingPage(
                    adventure: adventures[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class AdventureType {
  final String title;
  final IconData icon;
  final Color primaryColor;
  final String imagePath;

  AdventureType(this.title, this.icon, this.primaryColor, this.imagePath);
}

class AdventureCard extends StatelessWidget {
  final AdventureType adventure;
  final VoidCallback onTap;

  const AdventureCard({required this.adventure, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(adventure.icon, size: 50, color: adventure.primaryColor),
            SizedBox(height: 16),
            Text(
              adventure.title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: adventure.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AdventureLandingPage extends StatelessWidget {
  final AdventureType adventure;

  const AdventureLandingPage({required this.adventure});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Stack(
        children: [
          // Background Image (simulated with a colored container)
          Container(
            decoration: BoxDecoration(
              color: adventure.primaryColor.withOpacity(0.7),
              image: DecorationImage(
                image: AssetImage("assets/images/hiking.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          
          // Content
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${adventure.title} Adventures',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      _getAdventureDescription(adventure.title),
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: adventure.primaryColor,
                          padding: EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          'Explore ${adventure.title}',
                          style: TextStyle(fontSize: 18),
                        ),
                        onPressed: () {
                          // Navigate to adventure details
                        },
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildFeatureIcon(Icons.calendar_today, 'Trips'),
                        _buildFeatureIcon(Icons.map, 'Trails'),
                        _buildFeatureIcon(Icons.group, 'Community'),
                        _buildFeatureIcon(Icons.settings, 'Gear'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureIcon(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, color: adventure.primaryColor, size: 28),
        SizedBox(height: 4),
        Text(label, style: TextStyle(color: adventure.primaryColor)),
      ],
    );
  }

  String _getAdventureDescription(String type) {
    switch (type) {
      case 'Hiking':
        return 'Discover breathtaking trails and conquer new peaks with our guided hiking adventures. Perfect for all skill levels.';
      case 'Camping':
        return 'Experience nature at its finest with our camping trips. Sleep under the stars and wake up to stunning views.';
      case 'Water Sports':
        return 'Dive into excitement with kayaking, surfing, and more. Our water sports adventures will get your adrenaline pumping.';
      case 'Winter Sports':
        return 'Embrace the cold with skiing, snowboarding and other winter activities. Perfect for snow lovers!';
      default:
        return 'Explore amazing outdoor adventures tailored to your interests.';
    }
  }
}