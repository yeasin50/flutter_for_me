# Local Storage in Flutter

In Flutter we have many options to choose for storing data into our device. In this video I am going to present some of my favorites options to storing simple key-value or objects.

## 1. Shared_preferences

When it comes to storing simple key-value pair data this is the simple solution for most use-case. It is created by the Flutter team and supports all platforms. When you’ve simple task to persist user data which can be identified by primary keyword,

#### Commonly use on tracking user’s history/tracking

- 🌙 Light/Dark Mode selection
- 🌍 Preferred language selection
- ✅ Tracking if the user has completed onboarding
- Sound settings/history….

#### Supportive data types are

- `int`
- `double`
- `bool`
- `String`
- `List<String>` , you can use other type by converting into string/jsonEncoding and decoding, but there are other good options for that later in this video

#### In order to use it

But if you thinking about secure on local storage
I prefer using flutter_secure_storage, simple, nice, elegant . Just like shared_preferece it is also a key-value pair storage solution.

Add the package in your pubspec.yaml
Create a storage instance like
final storage = FlutterSecureStorage(aOptions: \_getAndroidOptions());
You can cass encrypted options
AndroidOptions \_getAndroidOptions() => const AndroidOptions(
encryptedSharedPreferences: true,
);
