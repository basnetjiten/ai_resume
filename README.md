# AIResume

This template uses [flutter_bloc](https://pub.dev/packages/flutter_bloc) as state management and follows uncle bob's
clean architecture.

### Get Started

This project contains 3 flavors:

- development
- staging
- production

# Setup Environment

create an app specific variables in core/base/env.dart and override these variables in core/envs/{flavor}\_env.dart
files.

To run the desired variants either use the launch configuration in VSCode/Android Studio or use the following commands:

# Development

```sh
flutter run  -t lib/main-development.dart --flavor development
```

# Staging

```sh
flutter run  -t lib/main-staging.dart --flavor staging
```

# Production

```shell
flutter run -t lib/main-production.dart --flavor production
```

## Generate Launcher Icons

To create a launcher icons replace yor app logo icons with

- assets/images/logo_development.png
- assets/images/logo_staging.png
- assets/images/logo_production.png

App logo should be 512x512px in size

```shell
dart run flutter_launcher_icons -f flutter_launcher_icons_production.yaml
```

## Create Native Splash

for Android 12 splash screen please refer
to [Android 12 Splash Screen](https://developer.android.com/guide/topics/ui/splash-screen)

- android 12 splash screen image should be size of 1152x1152px and logo should be fitted in circle of 768x768px

```shell
flutter pub run flutter_native_splash:create
```

## Code generation for utilities (Routes,Model,Blocs)

```sh
$ flutter pub run build_runner build --delete-conflicting-outputs
```

or

```sh
$ flutter pub run build_runner watch --delete-conflicting-outputs
```

## Working with Translations 🌐

This project relies on [flutter_localizations][flutter_localizations_link]
and [flutter_intl](https://pub.dev/packages/intl_utils) and follows
the [official internationalization guide for Flutter][internationalization_link].

### Adding Strings

1. To add a new localizable string, open the `intl_en.arb` file at `lib/localization/arb/intl_en.arb`.

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    }
}
```

2. Then add a new key/value and description

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    },
    "helloWorld": "Hello World",
    "@helloWorld": {
        "description": "Hello World Text"
    }
}
```

3. Use the new string

```dart
import 'package:flutter_project_template/localization/localization.dart';

@override
Widget build(BuildContext context) {
  final localization = context.localization;
  return Text(localization.helloWorld);
}
```

### Adding Supported Locales

Update the `CFBundleLocalizations` array in the `Info.plist` at `ios/Runner/Info.plist` to include the new locale.

```xml

<dict>
    <key>CFBundleLocalizations</key>
    <array>
        <string>en</string>
    </array>
</dict>

```

### Adding Translations

1. For each supported locale, add a new ARB file in `lib/localization/arb`.

```
├── localization
│   ├── arb
│   │   ├── intl_en.arb
│   │   └── intl_ne.arb
```

2. Add the translated strings to each `.arb` file:

`app_en.arb`

```arb
{
    "@@locale": "en",
    "counterAppBarTitle": "Counter",
    "@counterAppBarTitle": {
        "description": "Text shown in the AppBar of the Counter Page"
    }
}
```

`app_ne.arb`

```arb
{
    "@@locale": "ne",
    "counterAppBarTitle": "Contador",
    "@counterAppBarTitle": {
        "description": "Texto mostrado en la AppBar de la página del contador"
    }
}
```

3. Generate localized strings

```shell
flutter pub global activate intl_utils (if not activated previously)
flutter pub global run intl_utils:generate  (this is for the first time next time it will be auto generated when we run flutter pub get or just saving pubspec.yaml)
```

# Setup Fastlane for CI/CD

### Prerequisites

1. latest version of ruby
2. latest version of bundler
3. fastlane
4. Macos (for building ios apps)

### Setting up for android

Note: Before setting up you need appcenter account to upload build on appcenter

1. navigate to android directory
2. copy and paste .env-example file and rename to .env and add environment variable's values
3. Go to terminal and run `bundle config set --local path '../vendor/bundle'`
4. run `bundle install`
5. run ` bundle exec fastlane dev_appcenter` to generate build and upload to appcenter
6. for more you can create your own lane inside fastlane/Fastfile

### Setting up for ios

Note: Before setting up you need to apple developer account for app and appcenter account to upload app in appcenter

1. navigate to ios directory
2. copy and paste .env-example file and rename to .env and add environment variable's values
3. Go to terminal and run `bundle config set --local path '../vendor/bundle'`
4. run `bundle install`
5. run `bundle exec fastlane get_cert force:true read_only:false` to get certificates for ios build
6. run ` bundle exec fastlane dev_appcenter` to generate build and upload to appcenter
7. run `bundle exec fastlane dev_testflight` to generate build and upload to testflight

# Setup CI/CD pipelines for Bitbucket

1. go to repository settings and enable pipelines
2. add required repository variables defined on .env files of respective os i.e. android and ios
3. create/enable macos runner for repository
4. update runner name and runner os in bitbucket-pipelines.yml file
5. update branch name where you want to run pipeline in bitbucket-pipelines.yml [default: is main]
6. you are ready to test your first pipelines

#### Folder Structure

```
├── lib
│   ├── bootstrap.dart
│   ├── generated_plugin_registrant.dart
│   ├── graphql
│   │   ├── __generated__
│   │   │   ├── schema.ast.gql.dart
│   │   │   ├── serializers.gql.dart
│   │   │   └── serializers.gql.g.dart
│   │   └── schema.graphql
│   ├── localization
│   │   ├── arb
│   │   │   └── intl_en.arb
│   │   ├── generated
│   │   │   ├── intl
│   │   │   │   ├── messages_all.dart
│   │   │   │   └── messages_en.dart
│   │   │   └── localization.dart
│   │   └── localization.dart
│   ├── main-development.dart
│   ├── main-production.dart
│   ├── main-staging.dart
│   └── src
│       ├── app
│       │   ├── app.dart
│       │   └── presentation
│       │       ├── blocs
│       │       │   ├── app
│       │       │   └── locale
│       │       └── pages
│       │           ├── app.dart
│       │           └── splash_page.dart
│       ├── core
│       │   ├── base
│       │   │   ├── base_remote_source.dart
│       │   │   ├── base_repository.dart
│       │   │   └── env.dart
│       │   ├── constants
│       │   │   ├── graphql_error_codes.dart
│       │   │   └── storage_keys.dart
│       │   ├── di
│       │   │   ├── injector.config.dart
│       │   │   ├── injector.dart
│       │   │   └── register_modules.dart
│       │   ├── envs
│       │   │   ├── development_env.dart
│       │   │   ├── example_env.dart
│       │   │   ├── production_env.dart
│       │   │   └── staging_env.dart
│       │   ├── errors
│       │   │   ├── api_exception.dart
│       │   │   ├── api_exception.freezed.dart
│       │   │   ├── app_error.dart
│       │   │   └── app_error.freezed.dart
│       │   ├── extensions
│       │   │   ├── context_extension.dart
│       │   │   ├── date_time_extension.dart
│       │   │   ├── extensions.dart
│       │   │   ├── num_extension.dart
│       │   │   ├── string_extension.dart
│       │   │   ├── typography_extension.dart
│       │   │   └── widget_extension.dart
│       │   ├── form
│       │   │   ├── field.dart
│       │   │   ├── field.freezed.dart
│       │   │   └── form_mixin.dart
│       │   ├── helpers
│       │   │   ├── assets_helper.dart
│       │   │   └── device_info_helper.dart
│       │   ├── logging
│       │   │   └── logger.dart
│       │   ├── network
│       │   │   ├── auth_interceptor.dart
│       │   │   ├── network_info.dart
│       │   │   └── token_service.dart
│       │   ├── routes
│       │   │   ├── app_router.dart
│       │   │   ├── app_router.gr.dart
│       │   │   └── app_routes.dart
│       │   ├── themes
│       │   │   ├── app_colors.dart
│       │   │   ├── app_styles.dart
│       │   │   ├── app_theme.dart
│       │   │   └── theme.dart
│       │   ├── typedefs
│       │   │   └── typedefs.dart
│       │   └── widgets
│       │       ├── app_error_widget.dart
│       │       ├── cache_network_image.dart
│       │       ├── custom_button.dart
│       │       ├── snack_bar_widget.dart
│       │       ├── snackbar_widget.dart
│       │       ├── svg_image.dart
│       │       └── widgets.dart
│       └── features
│           ├── auth
│           │   ├── auth.dart
│           │   ├── data
│           │   │   ├── graphql
│           │   │   ├── models
│           │   │   ├── repository
│           │   │   └── source
│           │   ├── domain
│           │   │   └── repository
│           │   └── presentation
│           │       ├── blocs
│           │       └── pages
│           └── dashboard
│               ├── dashboard.dart
│               ├── data
│               │   ├── graphql
│               │   ├── models
│               │   ├── repository
│               │   └── source
│               ├── domain
│               │   └── repository
│               └── presentation
│                   ├── blocs
│                   ├── pages
│                   └── widgets
├── pubspec.lock
├── pubspec.yaml
├── scripts
│   └── Fastfile
└── test
    └── src
        └── app
            └── presentation
                └── blocs
                    └── app_cubit_test.dart


```

## Packages used in template

- #### [auto_route](https://pub.dev/packages/auto_route) used for routing
- #### [get_it](https://pub.dev/packages/get_it) used for service locator
- #### [injectable](https://pub.dev/packages/injectable) used for dependency injection with get_it
- #### [flutter_bloc](https://pub.dev/packages/flutter_bloc) used for state management
- #### [freezed](https://pub.dev/packages/freezed) used to generate union classes
- #### [json_serializable](https://pub.dev/packages/json_serializable) used to generate jsonConverter for models
- #### [equatable](https://pub.dev/packages/equatable) used to generate equality for models
- #### [dartz](https://pub.dev/packages/dartz) used for functional programming
- #### [dio](https://pub.dev/packages/dio) used for http client
- #### [ferry](https://pub.dev/packages/ferry) http client for graph requests
- #### [gql_dio_link](https://pub.dev/packages/gql_dio_link) used to add a dio link to graphql client to use features of dio
- #### [hive_local_storage](https://pub.dev/packages/hive_local_storage) used to store cache data and session data
- #### [logger](https://pub.dev/packages/logger) used for logging
- #### [device_info_plus](https://pub.dev/packages/device_info_plus) used to get information of device
- #### [path_provider](https://pub.dev/packages/path_provider) used to get different path from app (documents,downloads etc.)
- #### [path](https://pub.dev/packages/path) used for path manipulating
- #### [flutter_native_splash](https://pub.dev/packages/flutter_native_splash) used to create native splash on different platform
- #### [cached_network_image](https://pub.dev/packages/cached_network_image) used to render network images
- #### [flutter_svg](https://pub.dev/packages/flutter_svg) used to render svg images
