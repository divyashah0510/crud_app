# crud_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Dependencies

### to be downloaded first

```
npm install -g flutter_cli
```

```
firebase login
```

```
flutter pub activate flutter_cli
```

```
flutterfire configure
```

```
flutter pub add cloud_firestore
```

```
flutter pub add firebase_core
```

- Now you need to connect the Firebase app created by you on FireBase console through below code in `main.dart`

```
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'your_api_key',
      appId: 'your_app_id',
      messagingSenderId: 'your_messaging_sender_id',
      projectId: 'your_project_id',
      authDomain: 'your_auth_domain',
      storageBucket: 'your_storage_bucket',
    ),
  );
  runApp(const MyApp());
}
```

You can copy the apikeys and other fields when you run the command `flutterfire configure` and paste it in the above code.

# Screenshots

Create, Read, Update, Delete operations.

- Create: Add a new record to the database.
  ![Create](./screenshots/create.png)

- Read: Read all the records from the database.
  ![Read](./screenshots/read.png)

- Update: Update a record in the database.
  ![Update](./screenshots/update.png)

- Delete: Delete a record from the database.
  ![Delete](./screenshots/delete.png)
