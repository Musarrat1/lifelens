import 'package:flutter/material.dart';
import 'package:lifelens/screens/splash_screen.dart';
import 'package:lifelens/screens/userProfile.dart';

class Dashboard extends StatelessWidget {
  static const routeName = '/dashboard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LifeLens',style: TextStyle(color: Colors.green),),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),








        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 40),
            Text(
              'Welcome to the Lifelens',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 40),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _DashboardItem(
                    icon: Icons.person,
                    label: 'User Profile',
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Userprofile()),);
                      // Navigate to User Profile
                    },
                  ),
                  _DashboardItem(
                    icon: Icons.monetization_on,
                    label: 'Financial Overview',
                    onTap: () {
                      // Navigate to Financial Overview
                    },
                  ),
                  _DashboardItem(
                    icon: Icons.schedule,
                    label: 'Schedule Overview',
                    onTap: () {
                      // Navigate to Schedule Overview
                    },
                  ),
                  _DashboardItem(
                    icon: Icons.check_circle,
                    label: 'View Tasks',
                    onTap: () {
                      // Navigate to View Tasks
                    },
                  ),
                  _DashboardItem(
                    icon: Icons.contact_phone,
                    label: 'Contact Details',
                    onTap: () {
                      // Navigate to Contact Details
                    },
                  ),
                  _DashboardItem(
                    icon: Icons.health_and_safety,
                    label: 'Health',
                    onTap: () {
                      // Navigate to Health
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SplashScreen()),);
                  // Add logout functionality
                },
                child: Text('Log Out'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class _DashboardItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _DashboardItem({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green[50],
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.green, width: 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.green),
            SizedBox(height: 10),
            Text(
              label,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

