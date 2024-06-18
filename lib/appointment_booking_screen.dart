import 'package:flutter/material.dart';

class AppointmentBookingScreen extends StatelessWidget {
  final String userId;

  const AppointmentBookingScreen({required this.userId, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Appointment Booking'),
      ),
      body: Center(
        child: Text('Booking appointments for user: $userId'),
      ),
    );
  }
}
