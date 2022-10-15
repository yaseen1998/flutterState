import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myapppp/updatedata.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Firestore extends StatefulWidget {
  const Firestore({super.key});

  @override
  State<Firestore> createState() => _FirestoreState();
}

class _FirestoreState extends State<Firestore> {
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('products').snapshots();
var storage = FlutterSecureStorage();
  @override
  Widget build(BuildContext context) {
    return 
    StreamBuilder<QuerySnapshot>(
      stream: _usersStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

        return ListView(
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
            Map<String, dynamic> data =
                document.data()! as Map<String, dynamic>;
            return ListTile(
              title: Text(data['name']),
              subtitle: Text(data['value'].toString()),
              leading: const Icon(Icons.shopping_bag_sharp),
              trailing:Row(mainAxisSize: MainAxisSize.min,children: [
                 IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  storage.read(key: 'token').then((value) {
                    try {
                    FirebaseFirestore.instance
                        .collection('products')
                        .doc(document.id)
                        .delete();
                    }
                    catch(e){
                      showDialog(context: context, builder: (context) => AlertDialog(title: Text(e.toString()),));
                    }
                  });
                  
                },
              ),
              IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {
                  storage.read(key: 'token').then((value) {
                    try {
                    showDialog(context: context, builder: 
                  (context) => UpdataData(documentID:document.id),);
                    }
                    catch(e){
                      showDialog(context: context, builder: (context) => AlertDialog(title: Text(e.toString()),));
                    }
                  });
                  },
              )
              ],),
            );
          }).toList(),
        );
      },
    );
  }

}
