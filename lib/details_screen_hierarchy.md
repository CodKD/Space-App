# Details Screen Widget Hierarchy

// why use aspect ratio ? to make the 3d model responsive and keep its ratio on different screen sizes
// app crash when not using aspect ratio why ? because the 3d model needs a defined width and height to render properly
// that mean that aspect ratio give the 3d model a defined width and height based on the screen size
// if we don't use aspect ratio the 3d model will take all the available space and the app will crash
// we can also use container with defined width and height but that will not be responsive
// aspectRatio: 1 means that the width and height are equal so the 3d model will be a square


```
Scaffold
├── body: Column
│   ├── CustomAppBar
│   │   ├── mainTitle: planet!.name
│   │   ├── subTitle: planet!.title
│   │   └── showBackButton: true
│   └── Expanded
│       └── ListView
│           ├── padding: EdgeInsets.all(16)
│           ├── children: [AspectRatio, Text, SizedBox, Text, SizedBox, PlanetInfo...]
│           ├── AspectRatio
│           │   ├── aspectRatio: 1
│           │   └── child: Flutter3DViewer
│           │       ├── controller: controller
│           │       ├── src: planet!.model
│           │       ├── progressBarColor: AppColors.red
│           │       ├── enableTouch: true
│           │       └── activeGestureInterceptor: true
│           ├── Text (About Title)
│           │   ├── Strings.about
│           │   └── style: Theme.of(context).textTheme.titleLarge
│           ├── SizedBox(height: 8)
│           ├── Text (About Description)
│           │   ├── planet!.about
│           │   └── style: Theme.of(context).textTheme.bodyLarge
│           ├── SizedBox(height: 8)
│           ├── PlanetInfo
│           │   ├── title: Strings.distanceFromSun
│           │   └── value: planet!.distanceFromSun
│           ├── PlanetInfo
│           │   ├── title: Strings.lengthOfDay
│           │   └── value: planet!.lengthOfDay
│           ├── PlanetInfo
│           │   ├── title: Strings.orbitalPeriod
│           │   └── value: planet!.orbitalPeriod
│           ├── PlanetInfo
│           │   ├── title: Strings.radius
│           │   └── value: planet!.radius
│           ├── PlanetInfo
│           │   ├── title: Strings.mass
│           │   └── value: planet!.mass
│           ├── PlanetInfo
│           │   ├── title: Strings.gravity
│           │   └── value: planet!.gravity
│           └── PlanetInfo
│               ├── title: Strings.surfaceArea
│               └── value: planet!.surfaceArea
```


# Planet Info Widget Hierarchy

```
PlanetInfo
├── Padding
│   ├── padding: EdgeInsets.symmetric(vertical: 8)
│   └── child: Text
│       ├── "$title : $value"
│       └── style: Theme.of(context).textTheme.bodyLarge
```
