# windows_toast

[![pub package](https://img.shields.io/pub/v/windows_toast.svg)](https://pub.dev/packages/windows_toast)
[![style: lint](https://img.shields.io/badge/style-lint-4BC0F5.svg)](https://pub.dev/packages/lint)

A simple flutter package designed to display toast notifications in Windows applications. This package is similar to fluttertoast package, but it is designed to work with Windows applications also.

## Features Supported

See the example app for detailed implementation information.

| Features               | Android            | iOS                | macOS                | Web | Windows |
|------------------------|--------------------|--------------------|----------------------|-----|---------|
| Show toast             | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:   | :heavy_check_mark: | :heavy_check_mark: |


## Platform Support

| Android | iOS | macOS | Web | Linux | Windows |
|---------|-----|-------|-----|-------|---------|
| ✔       | ✔   | ✔     | ✔   | ✔   | ✔     |


## Usage

Import the package with:
```
import 'package:windows_toast/windows_toast.dart';
```

Then, use the following code to display a toast notification in your onpressed function or wherever you want to display the toast notification:

```
WindowsToast.show(
    'Hello, Windows Toast!',
    context,
    30,
);
```


