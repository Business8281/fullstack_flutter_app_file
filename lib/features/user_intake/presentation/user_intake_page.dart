import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/wellness_theme.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/services/auth_service.dart';

/// User Intake Page - Multi-step form for profile and program selection
class UserIntakePage extends ConsumerStatefulWidget {
  const UserIntakePage({super.key});

  @override
  ConsumerState<UserIntakePage> createState() => _UserIntakePageState();
}

class _UserIntakePageState extends ConsumerState<UserIntakePage> {
  final _formKey = GlobalKey<FormState>();
  final _pageController = PageController();
  int _currentStep = 0;

  // Form controllers
  final _ageController = TextEditingController();
  final _heightController = TextEditingController();
  final _professionController = TextEditingController();
  final _cityController = TextEditingController();
  final _countryController = TextEditingController();
  final _problemDescriptionController = TextEditingController();

  // Selected programs
  final Set<String> _selectedPrograms = {};

  bool _isLoading = false;

  @override
  void dispose() {
    _ageController.dispose();
    _heightController.dispose();
    _professionController.dispose();
    _cityController.dispose();
    _countryController.dispose();
    _problemDescriptionController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  Future<void> _handleSubmit() async {
    if (!_formKey.currentState!.validate()) return;
    if (_selectedPrograms.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select at least one program'),
          backgroundColor: WellnessTheme.error,
        ),
      );
      return;
    }

    setState(() => _isLoading = true);

    try {
      // DEMO MODE: Skip Firestore update
      if (AppConstants.demoMode) {
        await Future.delayed(const Duration(seconds: 1)); // Simulate network
        if (mounted) {
          context.go(AppConstants.routeAssessment);
        }
        return;
      }

      final user = ref.read(authServiceProvider).currentUser;
      if (user == null) throw Exception('No user logged in');

      // Update user document
      await FirebaseFirestore.instance
          .collection(AppConstants.usersCollection)
          .doc(user.uid)
          .update({
        'age': int.parse(_ageController.text),
        'height': double.parse(_heightController.text),
        'profession': _professionController.text.trim(),
        'city': _cityController.text.trim(),
        'country': _countryController.text.trim(),
        'problemDescription': _problemDescriptionController.text.trim(),
        'selectedPrograms': _selectedPrograms.toList(),
        'updatedAt': FieldValue.serverTimestamp(),
      });

      if (mounted) {
        // Navigate to assessment
        context.go(AppConstants.routeAssessment);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error: $e'),
            backgroundColor: WellnessTheme.error,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  void _nextStep() {
    if (_currentStep < 2) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      setState(() => _currentStep++);
    } else {
      _handleSubmit();
    }
  }

  void _previousStep() {
    if (_currentStep > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      setState(() => _currentStep--);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Progress indicator
            _buildProgressIndicator(),

            // Form pages
            Expanded(
              child: Form(
                key: _formKey,
                child: PageView(
                  controller: _pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    _buildPersonalInfoPage(),
                    _buildProblemDescriptionPage(),
                    _buildProgramSelectionPage(),
                  ],
                ),
              ),
            ),

            // Navigation buttons
            _buildNavigationButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressIndicator() {
    return Container(
      padding: const EdgeInsets.all(WellnessTheme.space24),
      child: Row(
        children: List.generate(3, (index) {
          final isActive = index <= _currentStep;
          return Expanded(
            child: Container(
              height: 4,
              margin: EdgeInsets.only(
                right: index < 2 ? WellnessTheme.space8 : 0,
              ),
              decoration: BoxDecoration(
                color: isActive
                    ? WellnessTheme.primary
                    : WellnessTheme.surfaceVariant,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget _buildPersonalInfoPage() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(WellnessTheme.space24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tell us about yourself',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: WellnessTheme.space8),
          Text(
            'This helps us personalize your experience',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: WellnessTheme.textSecondary,
                ),
          ),
          const SizedBox(height: WellnessTheme.space32),

          // Age
          TextFormField(
            controller: _ageController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Age',
              hintText: '25',
              prefixIcon: Icon(Icons.cake_outlined),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your age';
              }
              final age = int.tryParse(value);
              if (age == null ||
                  age < AppConstants.minAge ||
                  age > AppConstants.maxAge) {
                return 'Please enter a valid age (${AppConstants.minAge}-${AppConstants.maxAge})';
              }
              return null;
            },
          ),
          const SizedBox(height: WellnessTheme.space16),

          // Height
          TextFormField(
            controller: _heightController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Height (cm)',
              hintText: '170',
              prefixIcon: Icon(Icons.height),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your height';
              }
              final height = double.tryParse(value);
              if (height == null || height < 50 || height > 300) {
                return 'Please enter a valid height';
              }
              return null;
            },
          ),
          const SizedBox(height: WellnessTheme.space16),

          // Profession
          TextFormField(
            controller: _professionController,
            decoration: const InputDecoration(
              labelText: 'Profession',
              hintText: 'Software Engineer',
              prefixIcon: Icon(Icons.work_outline),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your profession';
              }
              return null;
            },
          ),
          const SizedBox(height: WellnessTheme.space16),

          // City
          TextFormField(
            controller: _cityController,
            decoration: const InputDecoration(
              labelText: 'City',
              hintText: 'New York',
              prefixIcon: Icon(Icons.location_city),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your city';
              }
              return null;
            },
          ),
          const SizedBox(height: WellnessTheme.space16),

          // Country
          TextFormField(
            controller: _countryController,
            decoration: const InputDecoration(
              labelText: 'Country',
              hintText: 'United States',
              prefixIcon: Icon(Icons.public),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your country';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }

  Widget _buildProblemDescriptionPage() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(WellnessTheme.space24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'What brings you here?',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: WellnessTheme.space8),
          Text(
            'Share what you\'re going through. This is a safe space.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: WellnessTheme.textSecondary,
                ),
          ),
          const SizedBox(height: WellnessTheme.space32),

          TextFormField(
            controller: _problemDescriptionController,
            maxLines: 10,
            maxLength: AppConstants.maxProblemDescriptionLength,
            decoration: const InputDecoration(
              labelText: 'Describe your situation',
              hintText:
                  'Tell us about the challenges you\'re facing, what you hope to achieve, or what you\'d like support with...',
              alignLabelWithHint: true,
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please describe your situation';
              }
              if (value.length < AppConstants.minProblemDescriptionLength) {
                return 'Please provide more details (at least ${AppConstants.minProblemDescriptionLength} characters)';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }

  Widget _buildProgramSelectionPage() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(WellnessTheme.space24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Choose your focus areas',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: WellnessTheme.space8),
          Text(
            'Select one or more areas you\'d like to work on',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: WellnessTheme.textSecondary,
                ),
          ),
          const SizedBox(height: WellnessTheme.space32),

          ...AppConstants.programs.map((program) {
            final isSelected = _selectedPrograms.contains(program);
            return Padding(
              padding: const EdgeInsets.only(bottom: WellnessTheme.space12),
              child: _ProgramCard(
                title: program,
                description: _getProgramDescription(program),
                icon: _getProgramIcon(program),
                isSelected: isSelected,
                onTap: () {
                  setState(() {
                    if (isSelected) {
                      _selectedPrograms.remove(program);
                    } else {
                      _selectedPrograms.add(program);
                    }
                  });
                },
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildNavigationButtons() {
    return Container(
      padding: const EdgeInsets.all(WellnessTheme.space24),
      decoration: BoxDecoration(
        color: WellnessTheme.surface,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        children: [
          if (_currentStep > 0)
            Expanded(
              child: OutlinedButton(
                onPressed: _previousStep,
                child: const Text('Back'),
              ),
            ),
          if (_currentStep > 0) const SizedBox(width: WellnessTheme.space16),
          Expanded(
            flex: 2,
            child: ElevatedButton(
              onPressed: _isLoading ? null : _nextStep,
              child: _isLoading
                  ? const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    )
                  : Text(_currentStep < 2 ? 'Continue' : 'Complete'),
            ),
          ),
        ],
      ),
    );
  }

  String _getProgramDescription(String program) {
    switch (program) {
      case 'Health':
        return 'Physical and mental wellbeing';
      case 'Relationships':
        return 'Connection and communication';
      case 'Growth':
        return 'Personal development and learning';
      case 'Best Version':
        return 'Becoming your authentic self';
      default:
        return '';
    }
  }

  IconData _getProgramIcon(String program) {
    switch (program) {
      case 'Health':
        return Icons.favorite_outline;
      case 'Relationships':
        return Icons.people_outline;
      case 'Growth':
        return Icons.trending_up;
      case 'Best Version':
        return Icons.auto_awesome;
      default:
        return Icons.circle_outlined;
    }
  }
}

class _ProgramCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  const _ProgramCard({
    required this.title,
    required this.description,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(WellnessTheme.radiusMedium),
      child: Container(
        padding: const EdgeInsets.all(WellnessTheme.space16),
        decoration: BoxDecoration(
          color: isSelected
              ? WellnessTheme.primaryLight.withOpacity(0.2)
              : WellnessTheme.surfaceVariant,
          border: Border.all(
            color: isSelected ? WellnessTheme.primary : Colors.transparent,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(WellnessTheme.radiusMedium),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(WellnessTheme.space12),
              decoration: BoxDecoration(
                color:
                    isSelected ? WellnessTheme.primary : WellnessTheme.textTertiary,
                borderRadius: BorderRadius.circular(WellnessTheme.radiusSmall),
              ),
              child: Icon(
                icon,
                color: Colors.white,
                size: 24,
              ),
            ),
            const SizedBox(width: WellnessTheme.space16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: isSelected
                              ? WellnessTheme.primary
                              : WellnessTheme.textPrimary,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            if (isSelected)
              const Icon(
                Icons.check_circle,
                color: WellnessTheme.primary,
              ),
          ],
        ),
      ),
    );
  }
}
