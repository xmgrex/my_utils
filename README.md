## Features
Personal package

## Getting started

## Usage

```dart
import 'package:flutter/material.dart';

class TextStyleExample extends StatelessWidget {
  const TextStyleExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///Default color is black.
        ///
        /// User as:
        /// Text("Hello!", styles: TextStyles.title.large.white);
        /// 
        Text('title large', style: TextStyles.title.large),
        Text('title medium', style: TextStyles.title),
        Text('title small', style: TextStyles.title.small),

        Text('label large', style: TextStyles.label.large),
        Text('label medium', style: TextStyles.label),
        Text('label small', style: TextStyles.label.small),
      ],
    );
  }
}

```

## Additional information

