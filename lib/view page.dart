
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class list extends StatefulWidget {
  const list({super.key});

  @override
  State<list> createState() => _addlistState();
}

class _addlistState extends State<list> {
  TextEditingController editIng =TextEditingController();
  TextEditingController text =TextEditingController();

  TextEditingController a=TextEditingController();
  TextEditingController b=TextEditingController();
  TextEditingController c=TextEditingController();
  List<List<String>> abc=[];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ADD LIST",style:
        TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
        centerTitle: true,
      ),
      body: Column(
        children: [SizedBox(height:50),
          Center(
            child: Container(
              width: 200,
              child: TextFormField(
                controller: a,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: Container(
              width: 200,
              child: TextFormField(
                controller: b,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: Container(
              width: 200,
              child: TextFormField(
                controller: c,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            setState(() {
              abc.add([a.text,b.text,c.text]);
              a.clear();
              b.clear();
              c.clear();
              print(abc);
            });
          }, child: Text("OK")),
          SizedBox(height: 20,),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: ListView.builder(
                itemCount: abc.length,
                itemBuilder: (BuildContext context,  index) => Card(
                  child: Column(
                    children: abc.map((item) {
                      return GestureDetector(
                        onTap: () async {
                          final result = await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => view(
                                initialValueA: item[0],
                                initialValueB: item[1],
                                initialValueC: item[2],


                              ),
                            ),
                          );
                          if (result != null) {
                            setState(() {
                              final index = abc.indexWhere((element) => element == item);
                              abc[index] = result;
                            });
                          }
                        },
                        child: Column(
                          children: [
                            Text(item[0],),
                            Text(item[1]),
                            Text(item[2]),
                            Row(
                              children: [
                                IconButton(onPressed:(){
                                  setState(() {
                                    showDialog(context: context,
                                        builder: (BuildContext context)=>AlertDialog(
                                          title: Text("Edit"),
                                          actions: [
                                            TextFormField(
                                              controller:a,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                              ),
                                            ),
                                            ElevatedButton(onPressed: (){
                                              setState(() {
                                                abc [index] =[a.text,b.text,c.text];
                                              });Navigator.of(context).pop();
                                              editIng.clear();},

                                                child: Text("OK"))
                                          ],
                                        ));
                                  });
                                }, icon: Icon(Icons.edit)),
                                IconButton(onPressed:(){
                                  setState(() {
                                    abc.removeAt(index);
                                  });
                                },
                                    icon: const Icon(Icons.delete)),
                              ],
                            ),

                          ],
                        ),
                      );
                    }).toList(),
                  ),)
            ),
          ),
        ],
      ),
    );
  }
}











class view extends StatefulWidget {
  final String initialValueA;
  final String initialValueB;
  final String initialValueC;



  const view({
    Key? key,
    required this.initialValueA,
    required this.initialValueB,
    required this.initialValueC,
  }) : super(key: key);




  @override
  State<view> createState() => _viewState();
}

class _viewState extends State<view> {
  late TextEditingController aController;
  late TextEditingController bController;
  late TextEditingController cController;



  TextEditingController text = TextEditingController();
  TextEditingController editIng = TextEditingController();

  List<String> z = [];
  void initState() {
    super.initState();
    aController = TextEditingController(text: widget.initialValueA);
    bController = TextEditingController(text: widget.initialValueB);
    cController = TextEditingController(text: widget.initialValueC);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Column(
            children: [
              TextFormField(
                controller: aController,

              ),
              TextFormField(
                controller: bController,

              ),
              TextFormField(
                controller: cController,
              ),
              ElevatedButton(
                onPressed: () {
                  // Pass back the modified values to the Test page
                  Navigator.pop(
                    context,
                    [aController.text, bController.text, cController.text],
                  );
                },
                child: Text("Save"),
              ),

              Row(
                children: [
                  IconButton(onPressed: () {
                    setState(() {
                      showDialog(context: context,
                          builder: (BuildContext context) =>
                              AlertDialog(
                                title: Text("Edit"),
                                actions: [
                                  TextFormField(
                                    controller: text,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                  ElevatedButton(onPressed: () {
                                    setState(() {
                                       z.add(editIng.text);
                                    });
                                    Navigator.of(context).pop();
                                    editIng.clear();
                                  },
                                      child: Text("OK"))
                                ],
                              ));
                    });
                  }, icon: Icon(Icons.edit)),
                  IconButton(onPressed: () {
                    setState(() {

                    });
                  },
                      icon: const Icon(Icons.delete)),
                ],

              )
            ]
        )
    );
  }







  }
