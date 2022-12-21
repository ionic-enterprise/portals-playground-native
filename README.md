# Portals for Native Playground

This repository contains a collection of iOS, Android, and web applications in a collection of platform-specific frameworks. Applications in this repository are organized first by platform then by framework. iOS and Android applications are configured to integrate with Ionic Portals.

The purpose of this repository is to allow developers to mix-and-match the provided applications to configure a "starter" Ionic Portals integration.

## Repository Breakdown

## iOS

This repository contains starter iOS applications using UIKit + Storyboards and Swift UI:

```bash
portals-playground-native/
├─ ios/
│  ├─ uikit/
│  ├─ swiftui/
```

### Building

You must first create a configuration file named `Config.xcconfig` within the appropriate directory, either:

- `ios/swiftui/Portals Playground`
- `ios/uikit/Portals Playground`

Populate the file with the following:

```bash
PORTALS_API_KEY=# Your key here
```

Starting from the repository root directory, install the Pods for the desired application:

```bash
cd ./ios/swiftui # or ./ios/uikit
pod install
```

After these steps have been taken, open the desired `.xcworkspace` file to launch the project in Xcode.

### Running

Before running the application, ensure that the web application to display through the Portal has been built using `npm`. This repository comes with three starter web applications that can be built with the following commands, run from the root of the repository:

```bash
npm run build -w ionic-angular
npm run build -w ionic-react
npm run build -w ionic-vue
```

There is a Build Phase Run Script that copies the built web application assets from their location in the repository into the iOS application. Both iOS applications contain the same script, and can be found in the `Portals Playground` target:

```bash
Portals Playground > Build Phases > [Ionic Portals] Copy Web Apps
```

By default, the script will attempt to copy the build output from the `ionic-angular` project. This can be modified as desired, with options for `ionic-react` and `ionic-vue` available, but commented out:

```bash
# Set to the web package you want to bundle.
# This must point to the distribution folder (e.g, 'www' or 'build')
APP_NAME="ionic-angular/www"
# APP_NAME = "ionic-react/build"
# APP_NAME = "ionic-vue/dist"
```

## Android

This repository contains starter Android applications using Java and Kotlin:

```bash
portals-playground-native/
├─ android/
│  ├─ java/
│  ├─ kotlin/
```

### Building

You must first create a configuration file named `secrets.xml` within the appropriate directory, either:

- `android/java/app/src/main/res/values`
- `android/kotlin/app/src/main/res/values`

Populate the file with the following:

```xml
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="portals_api_key">Your key here</string>
</resources>
```

---

Starting from the repository root directory, install the Pods for the desired application:

```bash
cd ./ios/swiftui # or ./ios/uikit
pod install
```

After these steps have been taken, open the desired `.xcworkspace` file to launch the project in Xcode.

### Running

Before running the application, ensure that the web application to display through the Portal has been built using `npm`. This repository comes with three starter web applications that can be built with the following commands, run from the root of the repository:

```bash
npm run build -w ionic-angular
npm run build -w ionic-react
npm run build -w ionic-vue
```

There is a Build Phase Run Script that copies the built web application assets from their location in the repository into the iOS application. Both iOS applications contain the same script, and can be found in the `Portals Playground` target:

```bash
Portals Playground > Build Phases > [Ionic Portals] Copy Web Apps
```

By default, the script will attempt to copy the build output from the `ionic-angular` project. This can be modified as desired, with options for `ionic-react` and `ionic-vue` available, but commented out:

```bash
# Set to the web package you want to bundle.
# This must point to the distribution folder (e.g, 'www' or 'build')
APP_NAME="ionic-angular/www"
# APP_NAME = "ionic-react/build"
# APP_NAME = "ionic-vue/dist"
```

---

The intention behind this repository is to provide a starting point to play around with Ionic Portals for iOS and Android.

Ultimately, this project will look like this:

```bash
portals-playground-native/
├─ android/
│  ├─ kotlin/
│  ├─ java/
├─ ios/
│  ├─ uikit/
│  ├─ swiftui/
├─ web/
│  ├─ ionic-angular/
│  ├─ ionic-react/
│  ├─ ionic-vue/
```

This allows playgrounders to mix-and-match starter projects to choose their own tech stack.

Steps like copying over resources and where to add Portals keys will need to be added in addition to general instructions on how to use this repo.
