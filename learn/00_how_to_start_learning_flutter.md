# How to learn flutter

This is the very first question asked by many after they start their Flutter journey. Here I have included necessary stuff from my knowledge, not strictly limited to Flutter but including the related things as well.

- I can point to a single direction from where they can start their journey as a Flutter developer.
- Also, you can share to save your time as well.
- Suggestions are welcome, make an issue and then PR.

## Documentation

Yes, there is no better option other than [official Flutter documentation](https://docs.flutter.dev/get-started/learn-flutter).

## Roadmap

My personal favorites are these two:

- https://plugfox.dev/flutter-developer-roadmap/
- https://roadmap.sh/flutter

## Basic

If this is your first language or you just wanna test it out, no need to install an IDE like Android Studio, VS Code or set up Flutter.  
Visit [dartpad.dev](https://dartpad.dev/) and click on the plus button and select:

- `dart snippet` to run Dart code or
- `flutter snippet` to run Flutter/widget-related codes.

BTW, Dart is a programming language and Flutter is a framework written in the Dart language.

### Dart

Start with Dart syntax. Make sure you get these well. You can skip generics, Dart 3 features like records and patterns at this point. You can learn these once you are comfortable with it. A good way of learning is solving some coding problems on different sites.

- [ ] Make sure you have removed/disabled any AI code assistance of IDE/editor. You want to learn, not be a copycat. Increase your brain muscles. Learn to think.

- [ ] Check out the introduction: https://dart.dev/language

### Layout

Flutter is about UI. There are **golden rules**:

1. Constraints go down
2. Size goes up
3. Parent positions the children

Yes, this is kinda different than other frameworks. If you understand these rules, you can tackle any layout issue, which is often shown by red or yellow boxes.

- [ ] Learn how layout works from [layout/constraints](https://docs.flutter.dev/ui/layout/constraints).  
       This is gonna take some time but it's worth it in the long run.

### Widgets

Once you have a basic understanding of how layout works, you can start learning some widgets.

- [ ] [Basic widgets](https://docs.flutter.dev/ui#basic-widgets)
  - [ ] `Text`
  - [ ] `Row`
  - [ ] `Column`
  - [ ] `Stack`
  - [ ] `Container`

You will learn other necessary widgets to work with these widgets.

- [ ] I will suggest watching [Flutter widget of the week playlist](https://www.youtube.com/playlist?list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG).  
       Watching twice might be enough to memorize which widget is used for what. Yes, that's all you need to memorize—just which widget provides which types of UI/features required for a working project. Take your time.

- [ ] You can check [cookbook](https://docs.flutter.dev/cookbook#design) as well. The design section will be more than enough for the time being, and you are free to skip or explore others as well.
