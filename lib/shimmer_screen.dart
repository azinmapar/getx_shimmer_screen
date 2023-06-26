import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_shimmer_screen/controllers/shimmer_controller.dart';

class ShimmerScreen extends StatelessWidget {
  const ShimmerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<ShimmerController>().toggle();
        },
        backgroundColor: Colors.grey[800],
        child: const Icon(
          Icons.toggle_off,
          color: Colors.white,
        ),
      ),
      body: Container(
        width: Get.width,
        margin: const EdgeInsets.all(10.0),
        child: ListView.separated(
          itemBuilder: (context, index) {
            // * Shimmering like a wave
            var delay = (300 * index);
            return Obx(
              () => Get.find<ShimmerController>().isLoading.value
                  ? Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: const Color(0xFF242424),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        children: [
                          // * Circle shimmer
                          FadeShimmer.round(
                            size: 60,
                            fadeTheme: FadeTheme.dark,
                            millisecondsDelay: delay,
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // * Text Shimmer
                              FadeShimmer(
                                width: 100.0,
                                height: 8.0,
                                millisecondsDelay: delay,
                                fadeTheme: FadeTheme.dark,
                                radius: 4.0,
                              ),
                              const SizedBox(
                                height: 8.0,
                              ),
                              FadeShimmer(
                                width: 170.0,
                                height: 8,
                                fadeTheme: FadeTheme.dark,
                                millisecondsDelay: delay,
                                radius: 4.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  : Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey[800],
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        const Text('Hello'),
                      ],
                    ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 10,
            );
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
