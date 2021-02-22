import 'package:flutter/material.dart';

class NoteList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List of notes')),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
        separatorBuilder: (__, ___) => Divider(height: 1, color: Colors.green),
        itemBuilder: (__, index){
            return ListTile(
              title: Text(
                'hello',
              style: TextStyle(color: Theme.of(context).primaryColor),
              ),
              subtitle: Text('Last edited on 21/02/2021'),
            );
           },
            itemCount: 30,
          ),
        );
  }
}
