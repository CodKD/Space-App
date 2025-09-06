# Home Screen Widget Hierarchy

## Overview
The Home Screen displays a custom app bar, planet image carousel, navigation controls, and an explore button.

## Widget Hierarchy

```
Scaffold
├── body: Column
│   ├── CustomAppBar
│   │   ├── mainTitle: Strings.explore
│   │   └── subTitle: Strings.homeTitleQuestion
│   ├── Expanded
│   │   └── PageView.builder
│   │       ├── controller: pageController
│   │       └── itemBuilder: (context, index)
│   │           └── Padding
│   │               ├── padding: EdgeInsets.all(16)
│   │               └── child: Image.asset
│   │                   └── Planet.planets[index % 9].image
│   ├── Padding
│   │   ├── padding: EdgeInsets.all(16)
│   │   └── child: Row
│   │       ├── mainAxisAlignment: MainAxisAlignment.spaceBetween
│   │       ├── children: [ElevatedButton, Text, ElevatedButton]
│   │       ├── ElevatedButton (Back)
│   │       │   ├── style: ElevatedButton.styleFrom(shape: CircleBorder())
│   │       │   ├── onPressed: () => pageController.animateToPage(...)
│   │       │   │   ├── duration: Duration(milliseconds: 300)
│   │       │   │   └── curve: Curves.decelerate
│   │       │   └── child: Icon(Icons.arrow_back)
│   │       ├── Text
│   │       │   ├── "${Planet.planets[index].name}"
│   │       │   └── style: Theme.of(context).textTheme.titleLarge
│   │       └── ElevatedButton (Forward)
│   │           ├── style: ElevatedButton.styleFrom(shape: CircleBorder())
│   │           ├── onPressed: () => pageController.animateToPage(...)
│   │           │   ├── duration: Duration(milliseconds: 300)
│   │           │   └── curve: Curves.decelerate
│   │           └── child: Icon(Icons.arrow_forward)
│   └── CustomElevatedButton
│       ├── text: "Explore ${Planet.planets[index].name}"
│       └── onpressed: () => Navigator.pushNamed(context, Routes.detailsRoute, arguments: Planet.planets[index])
```


# Custom App Bar Widget Hierarchy

```
CustomAppBar
├── Stack
│   ├── Image.asset
│   │   ├── AppImages.halfPlantImage
│   │   ├── width: double.infinity
│   │   └── fit: BoxFit.cover
│   └── Positioned.fill
│       └── Container
│           ├── decoration: BoxDecoration
│           │   └── gradient: LinearGradient
│           │       ├── colors: [AppColors.black, AppColors.black.withOpacity(0.6), Colors.transparent]
│           │       ├── begin: Alignment.bottomCenter
│           │       └── end: Alignment.topCenter
│           └── child: SafeArea
│               └── child: Column
│                   ├── _buildTopSection(context)
│                   ├── SizedBox(height: 30)
│                   └── _buildBottomSection(context)
```

## Top Section (_buildTopSection)

### With Back Button (showBackButton: true)
```
Row
├── ElevatedButton
│   ├── style: ElevatedButton.styleFrom(shape: CircleBorder())
│   ├── onPressed: () => Navigator.pop(context)
│   └── child: Icon(Icons.arrow_back)
├── Spacer()
├── Text
│   ├── mainTitle
│   └── style: Theme.of(context).textTheme.titleLarge
└── Spacer()
```

### Without Back Button (showBackButton: false)
```
Text
├── mainTitle
└── style: Theme.of(context).textTheme.titleLarge
```

## Bottom Section (_buildBottomSection)

```
Padding
├── padding: EdgeInsets.all(8.0)
└── child: Row
    └── Text
        ├── subTitle
        └── style: Theme.of(context).textTheme.titleLarge
```

## pageView controller listener logic
```dart
  PageController pageController = PageController(initialPage: 0);
  int index = 0;
  @override
  void initState() {
    super.initState();
    // The listener is used to detect changes in the page view's scroll position. When the user scrolls to a new page
    // 1- we need to check if the user has scrolled to a new page not fraction
    // pageController.page! % 1 == 0
    // 2- If it is, the state is updated to reflect the new page index.
    // what about % 9
    // 3- This is to ensure that the index wraps around when it reaches the end of the list.
    /*
      index = 0 -> 0 % 9 = 0
      index = 1 -> 1 % 9 = 1
      index = 2 -> 2 % 9 = 2
      index = 3 -> 3 % 9 = 3
      index = 4 -> 4 % 9 = 4
      index = 5 -> 5 % 9 = 5
      index = 6 -> 6 % 9 = 6
      index = 7 -> 7 % 9 = 7
      index = 8 -> 8 % 9 = 8
      index = 9 -> 9 % 9 = 0
    */
    pageController.addListener(
      () {
        if (pageController.page! % 1 == 0) {
          setState(() {
            index = pageController.page!.toInt() % Planet.planets.length;
          });
        }
      },
    );
  }
```