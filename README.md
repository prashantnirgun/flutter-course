## Flutter

## packages

```
flutter pub add shared_preferences sqflite path_provider path intl provider
flutter pub get
```

### Folder Structure

- main.dart : Calling MyApp()
- base_app.dart : Defined routes
- app_routes.dart : Routes defined
- home.dart : Home page calling Note List page
- /notes/note_list.dart : is not recognising read
- /notes/db_provider.dart : Database CRUD
- /notes/db_provider.dart : Provider defined

### Error

- File Name : /notes/note_list.dart
- Error : Line no 28 The method 'read' isn't defined for the type 'Context'.

### How do I implement this ?

I have /pages folder containing all pages which independantly run respective screen I don't want on2 global state I want each page should have its own state as per its requirement I try to defined ChangeNotifierProvider() in app_routes.dart but it failed can you please fix this working.
