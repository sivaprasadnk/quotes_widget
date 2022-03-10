# Quotes Widget

QuotesWidget is a package used to display a random quote enclosed by a neumorphic container.

![Image](https://github.com/sivaprasadnk/quotes_widget/blob/main/screenshots/screenshot.png)
## Getting Started

Add this to your package's `pubspec.yaml` file

```yaml
dependencies:
  quotes_widget: ^0.0.2
```

## Usage

Next, you just have to import the package using:

```dart
import 'package:quotes_widget/quotes_widget.dart';
```


```dart
  Widget build(BuildContext context) {
    return QuotesWidget(
        width: 300,
        height: 200,
        quoteFontSize: 21,
        authorFontSize: 18,
    ),
  }
```
## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
