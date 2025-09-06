# Flutter Space App Review Guide for Mentors

## Overview
This guide provides comprehensive criteria for reviewing Flutter Space App implementations submitted by students. Use this checklist to ensure consistent and thorough evaluations that help students grow as Flutter developers.

### ✅ 1. Required Project Structure
Students should organize their code into the following structure:
```
lib/
├── main.dart                 # Entry point with routing and theme configuration
├── core/                     # Shared resources
│   ├── assets/              # Asset management
│   │   ├── app_3d_models.dart    # 3D model asset paths
│   │   ├── app_images.dart       # Image asset paths
│   │   └── app_colors.dart       # Color constants
│   ├── constants/           # App constants
│   └── theme/               # Theme configuration
│       └── app_theme.dart   # Main theme configuration
├── models/                  # Data models
│   └── planet.dart          # Planet data model with static list
└── Ui/                      # User Interface screens organized by feature
    ├── home_screen/         # Home screen feature module
    │   └── home_screen.dart # Main home screen implementation
    ├── details_screen/      # Planet details feature module
    │   ├── details_screen.dart   # Main details screen implementation
    │   └── widgets/         # Details screen specific widgets
    │       └── planet_info.dart  # Planet information widget
    ├── landing_screen/      # Landing screen feature module
    │   └── landing.dart     # Main landing screen implementation
    ├── shared/              # Shared UI components
    │   └── widgets/         # Reusable widgets across features
    │       ├── custom_elevated_button.dart
    │       ├── full_width_action_button.dart
    │       └── unified_title_widget.dart
    └── Widgets/             # Global widgets
        ├── custom_app_bar.dart
        └── custom_elevated_button.dart
```

### 2. UI Implementation Standards

#### 🏗️ **Landing Screen Implementation Hierarchy**
Scaffold
└── Stack
    ├── Background Image (Positioned.fill)
    │   └── Image.asset(AppImages.landingBackground)
    ├── Gradient Overlay (Positioned.fill)
    │   └── Container with LinearGradient
    └── Main Content (Positioned)
        └── Padding
            └── Column
                ├── SpaceLogo()                    
                ├── Spacer()
                ├── LandingForm()                 
                │   ├── Text("Explore The Universe")
                │   ├── SizedBox(height: 20)
                │   └── CustomElevatedButton()     # Custom Widget
                │       ├── Text("Explore")
                │       └── Icon(Icons.arrow_forward)
                └── SizedBox(height: 20)

#### 🏠 **Home Screen Implementation Hierarchy**
Scaffold
├── CustomAppBar()                         # Custom Widget
│   └── Stack
│       ├── Background Image
│       ├── Gradient Overlay
│       └── AppBar (transparent)
│           ├── Text("Explore")
│           └── Text("Which planet would you like to explore?")
└── Body
    └── SpaceBackground()                  
        └── Column
            ├── Expanded
            │   └── PageView.builder()     # or GridView.builder()
            │       └── PlanetCard()       # Custom Widget (repeated)
            │           ├── Image.asset(planet.image)
            │           ├── Text(planet.name)
            │           └── NavigationButtons()  # Custom Widget
            │               ├── CircleAvatar (back)
            │               └── CircleAvatar (forward)
            └── Padding
                └── CustomElevatedButton() # Custom Widget
                    ├── Text("Explore ${planetName}")
                    └── Icon(Icons.arrow_forward)


#### 📖 **Details Screen Implementation Hierarchy**

Scaffold
├── CustomAppBar()                         # Custom Widget
│   └── Stack
│       ├── Background Image
│       ├── Gradient Overlay
│       ├── AppBar (transparent)
│       │   ├── BackButton (leading)
│       │   └── Text(planet.name) (title)
│       └── Positioned (bottom)
│           └── Text(planet.title)
└── Body
    └── SingleChildScrollView
        └── Column
            ├── PlanetHeader()             
            │   ├── Image.asset(planet.image)
            │   └── NavigationButtons()    # Custom Widget
            ├── PlanetInfo()               # Custom Widget
            │   └── PlanetModel3D()            # Custom Widget (optional)
            │       ├── Text("About")
            │       ├── Text(planet.about)
            │       └── PlanetStatistics()     # Custom Widget
            │           ├── StatisticRow("Distance from Sun", planet.distanceFromSun)
            │           ├── StatisticRow("Length of Day", planet.lengthOfDay)
            │           ├── StatisticRow("Orbital Period", planet.orbitalPeriod)
            │           ├── StatisticRow("Radius", planet.radius)
            │           ├── StatisticRow("Mass", planet.mass)
            │           ├── StatisticRow("Gravity", planet.gravity)
            │           └── StatisticRow("Surface Area", planet.surfaceArea)


### 3. Data Model Implementation ⭐ CRITICAL

Students must implement proper data models:

**Planet Model Requirements:**
- Complete Planet class with all required properties:
  - name, image, model, title, about
  - distanceFromSun, lengthOfDay, orbitalPeriod
  - radius, mass, gravity, surfaceArea
- Static list of all 9 celestial bodies (Sun + 8 planets)
- Proper constructor implementation
- Correct data types for all properties
- Accurate planetary data for each celestial body

**What to check:**
- ✅ Planet class exists in models/planet.dart
- ✅ All required properties are present and properly typed
- ✅ Static planets list contains all 9 celestial bodies
- ✅ Constructor properly initializes all properties
- ✅ Accurate astronomical data for each planet
- ✅ Proper use of AppImages and App3DModels for asset references
- ❌ Missing Planet model or incomplete implementation
- ❌ Hardcoded planet data directly in UI components
- ❌ Incorrect or missing planetary information
- ❌ Poor data structure organization






