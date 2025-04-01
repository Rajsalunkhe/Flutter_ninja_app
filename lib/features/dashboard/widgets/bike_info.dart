import 'package:flutter/material.dart';
import 'package:flutter_ninja_app/core/constants/constants.dart';

class BikeInfo extends StatelessWidget {
  const BikeInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          // Bike Status Card (ARMED view) with fixed height and Stack layout.
          Container(
            height: 340,
            width: double.infinity,
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center, // Centers the bike image.
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 80),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        bikeImagePath,
                        fit: BoxFit.contain, // Prevents cropping.
                      ),
                    ),
                  ),
                ),

                // Bottom left texts: bike model and type.
                Positioned(
                  bottom: 25,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ShaderMask(
                        shaderCallback: (bounds) {
                          return LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              const Color.fromARGB(255, 255, 255, 255), // 100% opacity white.
                              const Color.fromARGB(120, 255, 255, 255), // 47% opacity white.
                            ],
                          ).createShader(
                            Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                          );
                        },
                        child: const Text(
                          bikeModel,
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'AlternateGothicNo2D',
                            color: Colors.white, // Base color (overridden by shader).
                          ),
                        ),
                      ),
                      const Text(
                        bikeType,
                        style: TextStyle(
                          height: 0.8,
                          color: Color.fromARGB(153, 255, 255, 255), // 60% opacity white.
                          fontSize: 16,
                          fontFamily: 'AlternateGothicNo2D',
                        ),
                      ),
                    ],
                  ),
                ),

                // Bottom right: VIN text.
                const Positioned(
                  bottom: 16,
                  right: 16,
                  child: Text(
                    vinText,
                    style: TextStyle(
                      color: Color.fromARGB(153, 255, 255, 255), // 60% opacity white.
                      fontSize: 21,
                      fontFamily: 'AlternateGothicNo2D',
                    ),
                  ),
                ),

                // Top left: "ARMED" status with green circle.
                Positioned(
                  top: 20,
                  left: 20,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          color: limeGreenColor, // Green color.
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 8), // Space between circle and text.
                      Text(
                        armedStatus,
                        style: TextStyle(
                          fontFamily: 'AlternateGothicNo2D',
                          color: limeGreenColor, // Same as circle.
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),
          // Battery Info Section: Two distinct boxes.
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(

                    vertical: 30,
                  ),
                  decoration: BoxDecoration(
                    color: batteryCardColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ShaderMask(
                        shaderCallback: (bounds) {
                          return LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              const Color(0xFF363E48), // Top color.
                              const Color(0xFF0E1114), // Bottom color.
                            ],
                          ).createShader(
                            Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                          );
                        },
                        child: const Text(
                          batteryVoltageValue,
                          style: TextStyle(
                            height: 0.9,
                            fontSize: 56,
                            fontFamily: 'AlternateGothicNo2D',
                            color: Colors.white, // Overridden by shader.
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                       Text(
                        batteryVoltageLabel,
                        style: TextStyle(

                          height: 0.5,
                          color: Color(0xFF3C4450),
                          fontSize: MediaQuery.of(context).size.width * 0.0105,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(

                    vertical: 30,
                  ),
                  decoration: BoxDecoration(
                    color: batteryCardColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                chargeVectorImagePath,
                                fit: BoxFit.contain,
                              ),
                              ShaderMask(
                                shaderCallback: (bounds) {
                                  return LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      const Color(0xFF363E48), // Top color.
                                      const Color(0xFF0E1114), // Bottom color.
                                    ],
                                  ).createShader(
                                    Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                                  );
                                },
                                child: const Text(
                                  stateOfChargeValue,
                                  style: TextStyle(
                                    height: 0.9,
                                    fontSize: 56,
                                    fontFamily: 'AlternateGothicNo2D',
                                    color: Colors.white, // Overridden by shader.
                                  ),
                                ),
                              ),


                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 18.0,
                                  left: 5,
                                ),
                                child: Image.asset(
                                  signImagePath,
                                  fit: BoxFit.contain,
                                  height: 27,
                                  width: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                         Text(
                          stateOfChargeLabel,
                          style: TextStyle(
                            height: 0.5,
                            color: Color(0xFF3C4450),
                            fontSize: MediaQuery.of(context).size.width * 0.0105,

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
