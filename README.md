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
  
![Screenshot 2024-04-07 231346](https://github.com/divyashah0510/crud_app/assets/102017379/f0a42d2b-1b9e-47b3-b342-0f06690e5f11)

- Read: Read all the records from the database.

![Screenshot 2024-04-07 231252](https://github.com/divyashah0510/crud_app/assets/102017379/c7871cf2-5c6a-44b5-ad6c-fc032442d8c8)

- Update: Update a record in the database.

![Screenshot 2024-04-07 231425](https://github.com/divyashah0510/crud_app/assets/102017379/1e6a4c7c-59fb-4ff4-97fe-5828ea1f2919)

- Delete: Delete a record from the database.

![Screenshot 2024-04-07 231023](https://github.com/divyashah0510/crud_app/assets/102017379/df73b89b-ac17-444c-94bb-5af4ceba4565)


## For more references you could refer following link for firebase setup:
- [Refer this Video](https://www.youtube.com/watch?v=iQOvD0y-xnw&t=182s)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
