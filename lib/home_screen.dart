import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/secend.dart';
import 'counter_provider.dart';
class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My First Flutter State Management'
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Text("The Counter IS ${context.watch<CounterProvider>().counter} " , style: TextStyle(fontSize: 25)),

          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

             FloatingActionButton(
                onPressed: ()=>context.read<CounterProvider>().increment(),

                child: const Icon(Icons.add),
              ),
             SizedBox(width: 15),
             FloatingActionButton(
                onPressed: () => context.read<CounterProvider>().decrement(),

                child: const Icon(CupertinoIcons.minus),
              ),
            ],
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=>SecendScreen()));
        },

        child: const Icon(Icons.add),
      ),
    );
  }
}
