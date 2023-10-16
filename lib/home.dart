import 'package:flutter/material.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  List<Item> items = [];
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(
            Icons.search,
            color: Colors.blue,
          ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: titleController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius:  BorderRadius.all(Radius.circular(10.0),),
                ),
                labelText: 'Add title',
                hintText: 'Enter the title',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: descriptionController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius:  BorderRadius.all(Radius.circular(10.0),),
                  borderSide: BorderSide(color: Colors.red),
                ),
                labelText: 'Add Description',
                hintText: 'Enter the description',
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
            ),
            onPressed: () {
              addItem();
            },
            child: const Text('Add',style: TextStyle(color: Colors.white),),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.white54,
                    elevation: 3,
                    child: ListTile(
                      title: Text(items[index].title),
                      subtitle: Text(items[index].description),
                      leading: Container(
                        width: 34,
                        height: 34,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward,
                        color: Colors.grey,
                      ),
                      onLongPress: () {
                        showOptionsDialog(index);
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void addItem() {
    String title = titleController.text;
    String description = descriptionController.text;

    if (title.isNotEmpty && description.isNotEmpty) {
      setState(() {
        items.add(Item(title, description));
        titleController.clear();
        descriptionController.clear();
      });
    }
  }

  void showOptionsDialog(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Alert',style: TextStyle(fontWeight: FontWeight.bold),),
          actions: <Widget>[
            TextButton(
              child: const Text('Edit'),
              onPressed: () {
                Navigator.of(context).pop();
                showEditBottomSheet(index);
              },
            ),
            TextButton(
              child: const Text('Delete'),
              onPressed: () {
                setState(() {
                  items.removeAt(index);
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void showEditBottomSheet(int index) {
    String editedTitle = items[index].title;
    String editedDescription = items[index].description;

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                controller: TextEditingController(text: editedTitle),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius:  BorderRadius.all(Radius.circular(4.0),),
                  ),
                  labelText: 'Add title',
                  hintText: 'Enter the title',
                ),
                onChanged: (value) {
                  editedTitle = value;
                },
              ),
              const SizedBox(height: 10,),
              TextField(
                controller: TextEditingController(text: editedDescription),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius:  BorderRadius.all(Radius.circular(4.0),),
                  ),
                  labelText: 'Add title',
                  hintText: 'Enter the title',
                ),
                onChanged: (value) {
                  editedDescription = value;
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                ),
                onPressed: () {
                  setState(() {
                    items[index].title = editedTitle;
                    items[index].description = editedDescription;
                  });
                  Navigator.of(context).pop();
                },
                child: const Text('Edit Done',style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        );
      },
    );
  }
}

class Item {
  String title;
  String description;

  Item(this.title, this.description);
}