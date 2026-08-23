import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// WellnessHub Premium Design System
/// 
/// Calm, emotionally safe design with soft colors and high whitespace.
/// Apple-level polish for trustworthy, premium feel.
class WellnessTheme {
  // Private constructor
  WellnessTheme._();

  // ============ COLOR PALETTE ============
  
  // Primary - Soft Sage Green (calming, wellness)
  static const Color primaryLight = Color(0xFF8FB996);
  static const Color primary = Color(0xFF6B9B76);
  static const Color primaryDark = Color(0xFF4A7C59);
  
  // Secondary - Warm Peach (comforting, human)
  static const Color secondaryLight = Color(0xFFFFD4B8);
  static const Color secondary = Color(0xFFFFB88C);
  static const Color secondaryDark = Color(0xFFE89A6D);
  
  // Accent - Soft Lavender (calm, spiritual)
  static const Color accentLight = Color(0xFFD4C5E8);
  static const Color accent = Color(0xFFB8A5D6);
  static const Color accentDark = Color(0xFF9B85C4);
  
  // Neutrals - Warm Grays
  static const Color background = Color(0xFFFAF9F7);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceVariant = Color(0xFFF5F3F0);
  
  static const Color textPrimary = Color(0xFF2D2D2D);
  static const Color textSecondary = Color(0xFF6B6B6B);
  static const Color textTertiary = Color(0xFF9B9B9B);
  
  // Semantic Colors
  static const Color success = Color(0xFF6B9B76);
  static const Color warning = Color(0xFFFFB88C);
  static const Color error = Color(0xFFE07A7A);
  static const Color info = Color(0xFFB8A5D6);
  static const Color outline = Color(0xFFE0E0E0);
  
  // ============ TYPOGRAPHY ============
  
  static TextTheme textTheme = TextTheme(
    // Display - For hero sections
    displayLarge: GoogleFonts.merriweather(
      fontSize: 57,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.25,
      color: textPrimary,
      height: 1.2,
    ),
    displayMedium: GoogleFonts.merriweather(
      fontSize: 45,
      fontWeight: FontWeight.w300,
      letterSpacing: 0,
      color: textPrimary,
      height: 1.2,
    ),
    displaySmall: GoogleFonts.merriweather(
      fontSize: 36,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      color: textPrimary,
      height: 1.2,
    ),
    
    // Headline - For section titles
    headlineLarge: GoogleFonts.inter(
      fontSize: 32,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      color: textPrimary,
      height: 1.3,
    ),
    headlineMedium: GoogleFonts.inter(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      color: textPrimary,
      height: 1.3,
    ),
    headlineSmall: GoogleFonts.inter(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      color: textPrimary,
      height: 1.3,
    ),
    
    // Title - For card titles
    titleLarge: GoogleFonts.inter(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
      color: textPrimary,
      height: 1.4,
    ),
    titleMedium: GoogleFonts.inter(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
      color: textPrimary,
      height: 1.4,
    ),
    titleSmall: GoogleFonts.inter(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      color: textPrimary,
      height: 1.4,
    ),
    
    // Body - For content
    bodyLarge: GoogleFonts.inter(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      color: textPrimary,
      height: 1.6,
    ),
    bodyMedium: GoogleFonts.inter(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: textPrimary,
      height: 1.6,
    ),
    bodySmall: GoogleFonts.inter(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      color: textSecondary,
      height: 1.5,
    ),
    
    // Label - For buttons and labels
    labelLarge: GoogleFonts.inter(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.1,
      color: textPrimary,
      height: 1.4,
    ),
    labelMedium: GoogleFonts.inter(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.5,
      color: textPrimary,
      height: 1.4,
    ),
    labelSmall: GoogleFonts.inter(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      color: textSecondary,
      height: 1.4,
    ),
  );
  
  // ============ SPACING SCALE ============
  
  static const double space4 = 4.0;
  static const double space8 = 8.0;
  static const double space12 = 12.0;
  static const double space16 = 16.0;
  static const double space20 = 20.0;
  static const double space24 = 24.0;
  static const double space32 = 32.0;
  static const double space40 = 40.0;
  static const double space48 = 48.0;
  static const double space64 = 64.0;
  static const double space80 = 80.0;
  
  // ============ BORDER RADIUS ============
  
  static const double radiusSmall = 8.0;
  static const double radiusMedium = 12.0;
  static const double radiusLarge = 16.0;
  static const double radiusXLarge = 24.0;
  static const double radiusFull = 999.0;
  
  // ============ ELEVATION ============
  
  static const double elevationLow = 2.0;
  static const double elevationMedium = 4.0;
  static const double elevationHigh = 8.0;
  static const double elevationXHigh = 16.0;
  
  // ============ THEME DATA ============
  
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      
      // Colors
      colorScheme: ColorScheme.light(
        primary: primary,
        onPrimary: Colors.white,
        primaryContainer: primaryLight,
        onPrimaryContainer: primaryDark,
        
        secondary: secondary,
        onSecondary: Colors.white,
        secondaryContainer: secondaryLight,
        onSecondaryContainer: secondaryDark,
        
        tertiary: accent,
        onTertiary: Colors.white,
        tertiaryContainer: accentLight,
        onTertiaryContainer: accentDark,
        
        error: error,
        onError: Colors.white,
        
        surface: surface,
        onSurface: textPrimary,
        surfaceContainerHighest: surfaceVariant,
        
        outline: const Color(0xFFE0E0E0),
        outlineVariant: const Color(0xFFF0F0F0),
      ),
      
      scaffoldBackgroundColor: background,
      
      // Typography
      textTheme: textTheme,
      
      // AppBar
      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: false,
        backgroundColor: surface,
        foregroundColor: textPrimary,
        titleTextStyle: GoogleFonts.inter(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: textPrimary,
        ),
      ),
      
      // Card
      cardTheme: CardThemeData(
        elevation: elevationLow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusLarge),
        ),
        color: surface,
        margin: const EdgeInsets.all(space8),
      ),
      
      // Elevated Button
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: const EdgeInsets.symmetric(
            horizontal: space32,
            vertical: space16,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusFull),
          ),
          backgroundColor: primary,
          foregroundColor: Colors.white,
          textStyle: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
      ),
      
      // Text Button
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: space24,
            vertical: space12,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusFull),
          ),
          foregroundColor: primary,
          textStyle: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
      ),
      
      // Outlined Button
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: space32,
            vertical: space16,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusFull),
          ),
          foregroundColor: primary,
          side: const BorderSide(color: primary, width: 1.5),
          textStyle: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
      ),
      
      // Input Decoration
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surfaceVariant,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusMedium),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusMedium),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusMedium),
          borderSide: const BorderSide(color: primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusMedium),
          borderSide: const BorderSide(color: error, width: 1.5),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusMedium),
          borderSide: const BorderSide(color: error, width: 2),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: space20,
          vertical: space16,
        ),
        hintStyle: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: textTertiary,
        ),
      ),
      
      // Chip
      chipTheme: ChipThemeData(
        backgroundColor: surfaceVariant,
        selectedColor: primaryLight,
        labelStyle: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: space16,
          vertical: space8,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusFull),
        ),
      ),
      
      // Divider
      dividerTheme: const DividerThemeData(
        color: Color(0xFFF0F0F0),
        thickness: 1,
        space: space24,
      ),
      
      // Bottom Navigation Bar
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: surface,
        selectedItemColor: primary,
        unselectedItemColor: textTertiary,
        selectedLabelStyle: GoogleFonts.inter(
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: GoogleFonts.inter(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        elevation: elevationMedium,
      ),
    );
  }
}
