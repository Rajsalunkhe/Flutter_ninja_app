import 'package:flutter/material.dart';
import 'package:flutter_ninja_app/core/constants/constants.dart';
import 'package:flutter_ninja_app/features/setting/setting_page.dart';
import 'dashboard/screen/dashboard_page.dart';
import 'feedback/feedback_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Dashboard, Feedback, Settings
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          toolbarHeight: 0,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: Row(
              children: [
                // Left: Logo area
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Image.asset(
                    logoImagePath, // Using constant for logo image
                    height: 60,

                  ),
                ),
                // Center: Spacer to push TabBar to center
                const Spacer(),
                // TabBar wrapped in a fixed width container
                Container(
                  constraints: const BoxConstraints(maxWidth: 400), // Ensures tabs stay centered
                  child: TabBar(
                    isScrollable: true,
                    indicatorColor: headerLine, // Using constant for color
                    indicatorSize: TabBarIndicatorSize.label,
                    labelColor: headerLine, // Using constant for label color
                    unselectedLabelColor: Colors.black87,
                    labelStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'AlternateGothicNo2D',
                    ),
                    tabs: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13),
                        child: Tab(text: dashboardText),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13),

                        child: Tab(text: feedbackText),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13),
                        child: Tab(text: settingsText),
                      ),
                    ],
                  ),
                ),
                // Spacer to balance the layout
                const Spacer(),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [DashboardContent(), FeedbackContent(), SettingsContent()],
        ),
      ),
    );
  }
}
