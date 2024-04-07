import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud_app/services/FirestoreService.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // textcontroller
  final TextEditingController textController = TextEditingController();

  // firestore service
  final FirestoreService firestoreService = FirestoreService();

  // open the dialog box
  void openNoteBox([String? docID]) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Add a new note'),
        content: TextField(
          controller: textController,
          decoration: const InputDecoration(
            hintText: 'Enter your note here',
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              // add a new note
              if (docID == null) {
                firestoreService.addNote(textController.text);
              } else {
                firestoreService.updateNote(docID, textController.text);
              }
              // firestoreService.addNote(textController.text);

              // clear the text field
              textController.clear();

              // close the dialog box
              Navigator.pop(context);
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lime[200],
        titleTextStyle: const TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w900,
            fontFamily: "Verdana"),
        title: const Text('Home Page'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: firestoreService.getNotesStream(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List noteList = snapshot.data!.docs;

            // display as ListView
            return ListView.builder(
              itemCount: noteList.length,
              itemBuilder: (context, index) {
                // get induvidual note
                DocumentSnapshot document = noteList[index];
                String docID = document.id;

                // get the note text from doc
                Map<String, dynamic> data =
                    document.data() as Map<String, dynamic>;
                String notText = data['note'];
                return ListTile(
                  title: Text(notText),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () => openNoteBox(docID),
                        icon: const Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () => firestoreService.deleteNote(docID),
                        icon: const Icon(Icons.delete),
                      ),
                    ],
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: Text("No Data to display"),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => openNoteBox(),
        backgroundColor: Colors.lime.shade200,
        child: const Icon(Icons.add),
      ),
    );
  }
}

