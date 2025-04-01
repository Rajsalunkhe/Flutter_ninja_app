import 'package:flutter/material.dart';
import 'package:flutter_ninja_app/core/constants/constants.dart';

class FaultsInfo extends StatelessWidget {
  const FaultsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Faults container with gradient background.
          DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  faultsGradientStart,
                  faultsGradientEnd,
                ],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              height: 340,
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header row for faults.
                  Row(
                    children: [
                      ShaderMask(
                        shaderCallback: (bounds) {
                          return LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              faultShaderTop,
                              faultShaderBottom,
                            ],
                          ).createShader(
                            Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                          );
                        },
                        blendMode: BlendMode.srcIn,
                        child: const Text(
                          faultsHeader,
                          style: TextStyle(
                            fontSize: 40,
                            fontFamily: 'AlternateGotNo3D',
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8), // Space between text and badge.
                      // Circular badge displaying fault count.
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: faultBadgeBackground,
                          shape: BoxShape.circle,
                        ),
                        margin: const EdgeInsets.only(top: 5),
                        padding: const EdgeInsets.only(top: 5),
                        alignment: Alignment.center,
                        child: const Text(
                          faultBadge,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'AlternateGothicNo2D',
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Centered fault symbol image.
                  Center(
                    child: Image.asset(
                      faultSymbolImagePath,
                      fit: BoxFit.contain,
                      height: 100,
                      width: 100,
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Single fault row.
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Fault indicator.
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: faultIndicatorBackground,
                          shape: BoxShape.circle,
                        ),
                        margin: const EdgeInsets.only(top: 5),
                        padding: const EdgeInsets.only(top: 5),
                        alignment: Alignment.center,
                        child: const Text(
                          faultIndicatorText,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'AlternateGothicNo2D',
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      // Fault description.
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              faultTitle,
                              style: TextStyle(
                                fontSize: 21,
                                fontFamily: 'NimbusSansL',
                                color: Colors.black87,
                              ),
                            ),
                            Text(
                              faultDescription,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade800,
                                fontFamily: 'NimbusSansL',
                              ),
                            ),
                            const SizedBox(height: 8),
                            // Additional troubleshooting details can be added here.
                          ],
                        ),
                      ),
                      // Troubleshoot button.
                      InkWell(
                        onTap: () {
                          // Handle troubleshoot logic.
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          margin: const EdgeInsets.only(top: 26, right: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Text(
                            troubleshootButtonText,
                            style: TextStyle(
                              fontFamily: 'AlternateGotNo3D',
                              color: const Color(0xFFFA4646),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(
                      color: dividerColor,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          // "Start Repair" button.
          Align(
            alignment: Alignment.bottomRight,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffFA4646),
                padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 25),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                // Handle "Start Repair" action.
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    startRepairText,
                    style: TextStyle(
                      fontFamily: 'AlternateGotNo3D',
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Image.asset(
                    arrowImagePath,
                    height: 24,
                    width: 24,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
