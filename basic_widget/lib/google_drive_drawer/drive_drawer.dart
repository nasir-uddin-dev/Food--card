import 'package:flutter/material.dart';

class DriveDrawer extends StatefulWidget {
  const DriveDrawer({super.key});

  @override
  State<DriveDrawer> createState() => _DriveDrawerState();
}

class _DriveDrawerState extends State<DriveDrawer> {
  int _selectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Google Drive Style Drawer'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        ),
      ),
      drawer: _buildDriveDrawer(),
      body: Center(
        child: Text(
          'Content for option ${_selectedIndex + 1}',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }

  Widget _buildDriveDrawer() {
    return Drawer(
      child: Column(
        children: [
          // Header with Google Drive logo
          Container(
            height: 150,
            color: Colors.white,
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.cloud, color: Colors.blue[600], size: 30),
                    SizedBox(width: 8),
                    Text(
                      'Drive',
                      style: TextStyle(
                        color: Colors.blue[600],
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  'user@example.com',
                  style: TextStyle(color: Colors.grey[600], fontSize: 14),
                ),
              ],
            ),
          ),
          Divider(height: 1),

          // Main sections
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                // Quick Access
                _buildSectionHeader('Quick access'),
                _buildDrawerItem(Icons.star, 'Starred', 0),
                _buildDrawerItem(Icons.access_time, 'Recent', 1),
                _buildDrawerItem(Icons.offline_pin, 'Offline', 2),

                Divider(height: 1),

                // My Drive
                _buildSectionHeader('My Drive'),
                _buildDrawerItem(Icons.folder, 'My Drive', 3),
                _buildDrawerItem(Icons.computer, 'Computers', 4),
                _buildDrawerItem(Icons.people, 'Shared with me', 5),
                _buildDrawerItem(Icons.insert_drive_file, 'Files', 6),
                _buildDrawerItem(Icons.photo, 'Photos', 7),

                Divider(height: 1),

                // Google Services
                _buildSectionHeader('Google services'),
                _buildDrawerItem(Icons.collections, 'Photos', 8),
                _buildDrawerItem(Icons.video_library, 'Videos', 9),

                Divider(height: 1),

                // Storage
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Storage',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 8),
                      LinearProgressIndicator(
                        value: 0.65,
                        backgroundColor: Colors.grey[200],
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Colors.blue[600]!,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '6.5 GB of 10 GB used',
                        style: TextStyle(color: Colors.grey[600], fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Text(
        title,
        style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w500),
      ),
    );
  }

  Widget _buildDrawerItem(IconData icon, String title, int index) {
    return ListTile(
      leading: Icon(icon, color: _getIconColor(index)),
      title: Text(title),
      selected: _selectedIndex == index,
      selectedTileColor: Colors.blue[50],
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
        Navigator.pop(context); // Close the drawer
      },
    );
  }

  Color _getIconColor(int index) {
    switch (index) {
      case 0:
        return Colors.amber;
      case 1:
        return Colors.blue[600]!;
      case 2:
        return Colors.green;
      case 3:
        return Colors.blue[600]!;
      case 4:
        return Colors.orange;
      case 5:
        return Colors.pink;
      case 6:
        return Colors.green;
      case 7:
        return Colors.purple;
      case 8:
        return Colors.red;
      case 9:
        return Colors.deepPurple;
      default:
        return Colors.grey;
    }
  }
}
