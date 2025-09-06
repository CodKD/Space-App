# Landing Screen Widget Hierarchy (Updated)

## Overview
The Landing Screen displays a splash image with an "Explore The Universe" title and an "Explore" button at the bottom.

## Widget Hierarchy

```
SafeArea
└── Scaffold
    └── body: Stack
        ├── Image.asset
        │   ├── AppImages.splashImage
        │   ├── width: double.infinity
        │   ├── height: double.infinity
        │   └── fit: BoxFit.cover
        ├── Column
        │   ├── crossAxisAlignment: CrossAxisAlignment.start
        │   ├── mainAxisAlignment: MainAxisAlignment.center
        │   └── children: [Text]
        │       └── Text
        │           ├── Strings.exploreTheUniverse
        │           ├── style: TextStyle
        │           │   ├── fontWeight: FontWeight.bold
        │           │   ├── color: AppColors.white
        │           └── └── fontSize: 48
        └── Positioned
            ├── bottom: 20
            ├── left: 0
            ├── right: 0
            └── child: CustomElevatedButton
                ├── text: Strings.explore
                └── onpressed: () => Navigator.pushReplacementNamed(context, Routes.homeRoute)
```

# Custom Elevated Button Widget Hierarchy

```
CustomElevatedButton
├── Padding
│   ├── padding: EdgeInsets.all(8.0)
│   └── child: ElevatedButton
│       ├── style: ElevatedButton.styleFrom
│       │   ├── backgroundColor: AppColors.red
│       │   ├── padding: EdgeInsets.symmetric(horizontal: 24, vertical: 18)
│       │   └── shape: RoundedRectangleBorder
│       │       └── borderRadius: BorderRadius.circular(20)
│       ├── onPressed: onpressed
│       └── child: Row
│           ├── mainAxisAlignment: MainAxisAlignment.spaceBetween
│           ├── children: [Text, Icon]
│           ├── Text
│           │   ├── text
│           │   └── style: TextStyle
│           │       ├── fontSize: 18
│           │       └── fontWeight: FontWeight.w600
│           └── Icon
│               ├── Icons.arrow_forward
│               └── size: 20
```

