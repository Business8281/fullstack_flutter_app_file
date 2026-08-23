import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/theme/wellness_theme.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WellnessTheme.background,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isDesktop = constraints.maxWidth > 900;
          return SingleChildScrollView(
            child: Column(
              children: [
                _buildNavBar(context, isDesktop),
                _buildHeroSection(context, isDesktop),
                _buildValueProposition(context, isDesktop),
                _buildFeaturesSection(context, isDesktop),
                _buildCTASection(context, isDesktop),
                _buildFooter(context, isDesktop),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildNavBar(BuildContext context, bool isDesktop) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? WellnessTheme.space64 : WellnessTheme.space24,
        vertical: WellnessTheme.space24,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(WellnessTheme.radiusFull),
        child: BackdropFilter(
          filter: ui.ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: WellnessTheme.space24,
              vertical: WellnessTheme.space12,
            ),
            decoration: BoxDecoration(
              color: WellnessTheme.surface.withOpacity(0.8),
              borderRadius: BorderRadius.circular(WellnessTheme.radiusFull),
              border: Border.all(
                color: WellnessTheme.surfaceVariant.withOpacity(0.5),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min, // shrink to fit content
              children: [
                Icon(
                  Icons.spa_outlined,
                  color: WellnessTheme.primary,
                  size: 28,
                ),
                const SizedBox(width: WellnessTheme.space8),
                Text(
                  'WellnessHub',
                  style: WellnessTheme.textTheme.titleLarge?.copyWith(
                    fontFamily: GoogleFonts.merriweather().fontFamily,
                    color: WellnessTheme.primaryDark,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (isDesktop) ...[
                  const SizedBox(width: WellnessTheme.space48),
                  _NavBarItem('Assessment'),
                  const SizedBox(width: WellnessTheme.space24),
                  _NavBarItem('Practitioners'),
                  const SizedBox(width: WellnessTheme.space24),
                  _NavBarItem('Stories'),
                ],
                const Spacer(),
                TextButton(
                  onPressed: () => context.go(AppConstants.routeLogin),
                  child: const Text('Log In'),
                ),
                const SizedBox(width: WellnessTheme.space8),
                ElevatedButton(
                  onPressed: () => context.go(AppConstants.routeSignup),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: WellnessTheme.space24,
                      vertical: WellnessTheme.space16,
                    ),
                  ),
                  child: const Text('Get Started'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeroSection(BuildContext context, bool isDesktop) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? WellnessTheme.space80 : WellnessTheme.space24,
        vertical: isDesktop ? 100 : WellnessTheme.space40,
      ),
      child: isDesktop
          ? Row(
              children: [
                Expanded(child: _HeroContent(isDesktop: true)),
                const SizedBox(width: WellnessTheme.space64),
                Expanded(child: _HeroVisual()),
              ],
            )
          : Column(
              children: [
                _HeroContent(isDesktop: false),
                const SizedBox(height: WellnessTheme.space40),
                _HeroVisual(),
              ],
            ),
    );
  }

  Widget _buildValueProposition(BuildContext context, bool isDesktop) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? WellnessTheme.space64 : WellnessTheme.space24,
        vertical: WellnessTheme.space64,
      ),
      child: Column(
        children: [
          Text(
            'Why Choose WellnessHub?',
            style: isDesktop
                ? WellnessTheme.textTheme.displaySmall
                : WellnessTheme.textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: WellnessTheme.space48),
          Wrap(
            spacing: WellnessTheme.space32,
            runSpacing: WellnessTheme.space32,
            alignment: WrapAlignment.center,
            children: [
              _ValueCard(
                icon: Icons.psychology_alt_rounded,
                title: 'AI-Powered Insights',
                description:
                    'Our advanced AI analyzes your daily patterns to provide personalized wellness recommendations.',
                color: WellnessTheme.primaryLight,
              ),
              _ValueCard(
                icon: Icons.video_camera_front_rounded,
                title: 'Expert Practitioners',
                description:
                    'Connect with certified therapists and coaches via secure, high-quality video calls.',
                color: WellnessTheme.secondary,
              ),
              _ValueCard(
                icon: Icons.spa_rounded,
                title: 'Holistic Approach',
                description:
                    'Gamified milestones and habit tracking to help you build sustainable healthy routines.',
                color: WellnessTheme.accent,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturesSection(BuildContext context, bool isDesktop) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: WellnessTheme.space80,
        horizontal: isDesktop ? WellnessTheme.space80 : WellnessTheme.space24,
      ),
      decoration: BoxDecoration(
        color: WellnessTheme.surfaceVariant.withOpacity(0.3),
      ),
      child: Column(
        children: [
          Text(
            'Holistic Wellness Ecosystem',
            style: WellnessTheme.textTheme.labelLarge?.copyWith(
              color: WellnessTheme.primary,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: WellnessTheme.space16),
          Text(
            'Everything you need to thrive',
            style: isDesktop
                ? WellnessTheme.textTheme.displayMedium
                : WellnessTheme.textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: WellnessTheme.space64),
          if (isDesktop)
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: _FeatureCardLarge(
                    title: 'Personalized Matching',
                    description:
                        'Find your perfect wellness match. Our algorithm considers your goals, personality, and preferences.',
                    icon: Icons.people_alt_rounded,
                    imageAsset: 'assets/images/feature_match.png', // Placeholder
                    color: WellnessTheme.secondaryLight,
                  ),
                ),
                const SizedBox(width: WellnessTheme.space24),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      _FeatureCardSmall(
                        title: '1:1 Video Sessions',
                         description: 'Secure, high-quality video consultations.',
                        icon: Icons.videocam_rounded,
                        color: WellnessTheme.primaryLight,
                      ),
                      const SizedBox(height: WellnessTheme.space24),
                      _FeatureCardSmall(
                        title: 'Gamified Progress',
                        description: 'Earn badges and track your growth journey.',
                        icon: Icons.emoji_events_rounded,
                        color: WellnessTheme.accentLight,
                      ),
                    ],
                  ),
                ),
              ],
            )
          else
            Column(
              children: [
                _FeatureCardLarge(
                  title: 'Personalized Matching',
                  description:
                      'Find your perfect wellness match. Our algorithm considers your goals, personality, and preferences.',
                  icon: Icons.people_alt_rounded,
                  imageAsset: '',
                  color: WellnessTheme.secondaryLight,
                ),
                const SizedBox(height: WellnessTheme.space24),
                _FeatureCardSmall(
                  title: '1:1 Video Sessions',
                  description: 'Secure, high-quality video consultations.',
                  icon: Icons.videocam_rounded,
                  color: WellnessTheme.primaryLight,
                ),
                const SizedBox(height: WellnessTheme.space24),
                _FeatureCardSmall(
                  title: 'Gamified Progress',
                  description: 'Earn badges and track your growth journey.',
                  icon: Icons.emoji_events_rounded,
                  color: WellnessTheme.accentLight,
                ),
              ],
            ),
        ],
      ),
    );
  }

  Widget _buildCTASection(BuildContext context, bool isDesktop) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: isDesktop ? WellnessTheme.space64 : WellnessTheme.space24,
        vertical: WellnessTheme.space64,
      ),
      padding: EdgeInsets.all(isDesktop ? WellnessTheme.space80 : WellnessTheme.space40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(WellnessTheme.radiusXLarge),
        gradient: const LinearGradient(
          colors: [WellnessTheme.primary, WellnessTheme.primaryDark],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: WellnessTheme.primary.withOpacity(0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            'Ready to transform your life?',
            style: WellnessTheme.textTheme.displaySmall?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: WellnessTheme.space16),
          Text(
            'Join thousands of others on their path to a better life today.',
            textAlign: TextAlign.center,
            style: WellnessTheme.textTheme.titleMedium?.copyWith(
              color: Colors.white.withOpacity(0.9),
            ),
          ),
          const SizedBox(height: WellnessTheme.space40),
          ElevatedButton(
            onPressed: () => context.go(AppConstants.routeSignup),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: WellnessTheme.primary,
              padding: const EdgeInsets.symmetric(
                horizontal: WellnessTheme.space48,
                vertical: WellnessTheme.space20,
              ),
              textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            child: const Text('Get Started Now'),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter(BuildContext context, bool isDesktop) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: WellnessTheme.space64,
        horizontal: isDesktop ? WellnessTheme.space80 : WellnessTheme.space24,
      ),
      color: WellnessTheme.background,
      child: Column(
        children: [
          if (isDesktop)
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.spa, color: WellnessTheme.primary, size: 28),
                          const SizedBox(width: 8),
                          Text(
                            'WellnessHub',
                            style: WellnessTheme.textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: WellnessTheme.space16),
                      Text(
                        'Your daily companion for mental and physical well-being.',
                        style: WellnessTheme.textTheme.bodyMedium?.copyWith(
                          color: WellnessTheme.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
                _FooterColumn(
                  title: 'Platform',
                  links: const ['Assessment', 'Practitioners', 'Community', 'Pricing'],
                ),
                _FooterColumn(
                  title: 'Company',
                  links: const ['About Us', 'Careers', 'Blog', 'Contact'],
                ),
                _FooterColumn(
                  title: 'Legal',
                  links: const ['Privacy Policy', 'Terms of Service', 'Cookie Policy'],
                ),
              ],
            )
          else
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.spa, color: WellnessTheme.primary, size: 24),
                    const SizedBox(width: 8),
                    Text(
                      'WellnessHub',
                      style: WellnessTheme.textTheme.titleLarge,
                    ),
                  ],
                ),
                const SizedBox(height: WellnessTheme.space32),
                Wrap(
                  spacing: 24,
                  runSpacing: 16,
                  alignment: WrapAlignment.center,
                  children: const [
                    Text('About'),
                    Text('Practitioners'),
                    Text('Contact'),
                    Text('Privacy'),
                  ],
                ),
              ],
            ),
          const SizedBox(height: WellnessTheme.space48),
          Divider(color: WellnessTheme.outline.withOpacity(0.5)),
          const SizedBox(height: WellnessTheme.space24),
          Text(
            '© ${DateTime.now().year} WellnessHub. All rights reserved.',
            style: WellnessTheme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  
  const _NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: WellnessTheme.textTheme.bodyMedium?.copyWith(
        fontWeight: FontWeight.w500,
        color: WellnessTheme.textSecondary,
      ),
    );
  }
}

class _HeroContent extends StatelessWidget {
  final bool isDesktop;

  const _HeroContent({required this.isDesktop});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isDesktop ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: WellnessTheme.space16,
            vertical: WellnessTheme.space8,
          ),
          decoration: BoxDecoration(
            color: WellnessTheme.primaryLight.withOpacity(0.15),
            borderRadius: BorderRadius.circular(WellnessTheme.radiusFull),
            border: Border.all(
              color: WellnessTheme.primaryLight.withOpacity(0.3),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.stars_rounded, color: WellnessTheme.primary, size: 20),
              const SizedBox(width: 8),
              Text(
                'Reimagine your wellness journey',
                style: WellnessTheme.textTheme.labelMedium?.copyWith(
                  color: WellnessTheme.primaryDark,
                ),
              ),
            ],
          ),
        ).animate().fadeIn(duration: 600.ms).slideY(begin: 0.2, end: 0),
        const SizedBox(height: WellnessTheme.space32),
        Text(
          'Find Balance.\nDiscover Growth.',
          textAlign: isDesktop ? TextAlign.start : TextAlign.center,
          style: isDesktop
              ? WellnessTheme.textTheme.displayLarge?.copyWith(
                  fontSize: 72,
                  height: 1.1,
                  color: WellnessTheme.textPrimary,
                )
              : WellnessTheme.textTheme.displayMedium?.copyWith(
                  height: 1.2,
                  color: WellnessTheme.textPrimary,
                ),
        ).animate().fadeIn(duration: 600.ms, delay: 200.ms).slideY(begin: 0.2, end: 0),
        const SizedBox(height: WellnessTheme.space24),
        Text(
          'Connect with world-class practitioners, get personalized AI insights, and embark on a transformative journey towards your best self.',
          textAlign: isDesktop ? TextAlign.start : TextAlign.center,
          style: WellnessTheme.textTheme.bodyLarge?.copyWith(
            fontSize: 20,
            color: WellnessTheme.textSecondary,
            height: 1.6,
          ),
        ).animate().fadeIn(duration: 600.ms, delay: 400.ms).slideY(begin: 0.2, end: 0),
        const SizedBox(height: WellnessTheme.space48),
        Row(
          mainAxisAlignment:
              isDesktop ? MainAxisAlignment.start : MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.go(AppConstants.routeSignup),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 48,
                  vertical: 24,
                ),
                textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              child: const Text('Start Your Journey'),
            ),
            const SizedBox(width: WellnessTheme.space24),
            OutlinedButton(
               onPressed: () {},
               style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 24,
                ),
              ),
              child: const Text('Learn More'),
            ),
          ],
        ).animate().fadeIn(duration: 600.ms, delay: 600.ms).slideY(begin: 0.2, end: 0),
        const SizedBox(height: WellnessTheme.space32),
        Row(
           mainAxisAlignment:
              isDesktop ? MainAxisAlignment.start : MainAxisAlignment.center,
          children: [
            _TrustIndicator('4.9/5', 'Rating'),
            const SizedBox(width: 24),
            Container(height: 24, width: 1, color: WellnessTheme.outline),
            const SizedBox(width: 24),
            _TrustIndicator('10k+', 'Community'),
          ],
        ).animate().fadeIn(duration: 600.ms, delay: 800.ms)
      ],
    );
  }
}

class _TrustIndicator extends StatelessWidget {
  final String value;
  final String label;

  const _TrustIndicator(this.value, this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          style: WellnessTheme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: WellnessTheme.primaryDark,
          ),
        ),
        Text(
          label,
          style: WellnessTheme.textTheme.bodySmall,
        ),
      ],
    );
  }
}

class _HeroVisual extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            WellnessTheme.primaryLight.withOpacity(0.5),
            WellnessTheme.accentLight.withOpacity(0.5),
          ],
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Decorative circles
          Positioned(
            top: -50,
            right: -50,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.3),
              ),
            ),
          ),
           Positioned(
            bottom: 50,
            left: -30,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: WellnessTheme.secondaryLight.withOpacity(0.4),
              ),
            ),
          ),
          // Illustration Placeholder (Ideally Use Rive or Image Asset)
          Icon(
            Icons.self_improvement_rounded,
            size: 120,
            color: Colors.white.withOpacity(0.8),
          ),
        ],
      ),
    ).animate()
     .scale(duration: 800.ms, curve: Curves.easeOutBack)
     .shimmer(duration: 2.seconds, delay: 1.seconds);
  }
}

class _ValueCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final Color color;

  const _ValueCard({
    required this.icon,
    required this.title,
    required this.description,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding: const EdgeInsets.all(WellnessTheme.space32),
      decoration: BoxDecoration(
        color: WellnessTheme.surface,
        borderRadius: BorderRadius.circular(WellnessTheme.radiusLarge),
        border: Border.all(color: WellnessTheme.surfaceVariant),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(WellnessTheme.space12),
            decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              borderRadius: BorderRadius.circular(WellnessTheme.radiusMedium),
            ),
            child: Icon(icon, color: WellnessTheme.primaryDark, size: 32),
          ),
          const SizedBox(height: WellnessTheme.space24),
          Text(title, style: WellnessTheme.textTheme.titleLarge),
          const SizedBox(height: WellnessTheme.space12),
          Text(
            description,
            style: WellnessTheme.textTheme.bodyMedium?.copyWith(
              color: WellnessTheme.textSecondary,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}

class _FeatureCardLarge extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final String imageAsset;
  final Color color;

  const _FeatureCardLarge({
    required this.title,
    required this.description,
    required this.icon,
    required this.imageAsset,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: const EdgeInsets.all(WellnessTheme.space32),
      decoration: BoxDecoration(
        color: WellnessTheme.surface,
        borderRadius: BorderRadius.circular(WellnessTheme.radiusXLarge),
        border: Border.all(color: WellnessTheme.surfaceVariant),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: WellnessTheme.textPrimary, size: 28),
          ),
          const SizedBox(height: WellnessTheme.space24),
          Text(title, style: WellnessTheme.textTheme.headlineSmall),
          const SizedBox(height: WellnessTheme.space12),
          Text(
            description,
            style: WellnessTheme.textTheme.bodyLarge?.copyWith(
              color: WellnessTheme.textSecondary,
            ),
          ),
          const  Spacer(),
          // Placeholder for visual
          Container(
             height: 150,
             decoration: BoxDecoration(
               color: color.withOpacity(0.1),
               borderRadius: BorderRadius.circular(WellnessTheme.radiusLarge),
             ),
             child: Center(
               child: Icon(Icons.image, color: color, size: 48),
             ),
          ),
        ],
      ),
    );
  }
}

class _FeatureCardSmall extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final Color color;

  const _FeatureCardSmall({
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(WellnessTheme.space32),
      decoration: BoxDecoration(
        color: WellnessTheme.surface,
        borderRadius: BorderRadius.circular(WellnessTheme.radiusXLarge),
        border: Border.all(color: WellnessTheme.surfaceVariant),
      ),
       child: Row(
        children: [
          Container(
             padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: WellnessTheme.textPrimary, size: 24),
          ),
          const SizedBox(width: WellnessTheme.space24),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(title, style: WellnessTheme.textTheme.titleLarge),
                 const SizedBox(height: 4),
                 Text(
                   description,
                   style: WellnessTheme.textTheme.bodyMedium?.copyWith(
                     color: WellnessTheme.textSecondary,
                   ),
                 ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _FooterColumn extends StatelessWidget {
  final String title;
  final List<String> links;

  const _FooterColumn({required this.title, required this.links});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: WellnessTheme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: WellnessTheme.space24),
          ...links.map((link) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    link,
                    style: WellnessTheme.textTheme.bodyMedium?.copyWith(
                      color: WellnessTheme.textSecondary,
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
