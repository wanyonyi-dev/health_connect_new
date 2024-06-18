import 'package:flutter/material.dart';
import 'health_monitor_screen.dart';
import 'wellness_tracking_screen.dart';
import 'appointment_booking_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatelessWidget {
  final String userId;

  const HomeScreen({required this.userId, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Health Connect'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HealthMonitorScreen(userId: userId)),
                );
              },
              child: const Text('Health Monitoring'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WellnessTrackingScreen(userId: userId)),
                );
              },
              child: const Text('Wellness Tracking'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AppointmentBookingScreen(userId: userId)),
                );
              },
              child: const Text('Appointment Booking'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen(userId: userId)),
                );
              },
              child: const Text('Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
