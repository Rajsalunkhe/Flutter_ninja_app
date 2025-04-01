import 'package:flutter/material.dart';
import 'package:flutter_ninja_app/core/constants/constants.dart';
import 'package:flutter_ninja_app/features/dashboard/widgets/bike_info.dart';
import 'package:flutter_ninja_app/features/dashboard/widgets/faults_info.dart';

class DashboardContent extends StatelessWidget {
  const DashboardContent({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Left Column (bike info + battery info)
            BikeInfo(),
            const SizedBox(width: 16),
            // Right Column (faults + repair)
            FaultsInfo(),
          ],
        ),
      ),
    );
  }
}
