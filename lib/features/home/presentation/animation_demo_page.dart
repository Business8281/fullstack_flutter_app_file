import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:lottie/lottie.dart';
import 'package:rive/rive.dart';
import '../core/ui_components.dart';

class AnimationDemoPage extends StatelessWidget {
  const AnimationDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animations & 3D')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              '3D Model Viewer',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const SizedBox(
              height: 300,
              child: PremiumCard(
                child: ModelViewer(
                  backgroundColor: Colors.transparent,
                  src: 'https://modelviewer.dev/shared-assets/models/Astronaut.glb',
                  alt: 'A 3D model of an astronaut',
                  ar: true,
                  autoRotate: true,
                  cameraControls: true,
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Lottie Animation',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            PremiumCard(
              child: Lottie.network(
                'https://assets9.lottiefiles.com/packages/lf20_kyu7xb1v.json',
                height: 200,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Rive Animation',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const SizedBox(
              height: 200,
              child: PremiumCard(
                child: RiveAnimation.network(
                  'https://cdn.rive.app/animations/vehicles.riv',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
