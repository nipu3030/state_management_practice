import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_practice/provider/counter_provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: (){
             // Provider.of<CounterProvider>(context,listen: false).incrementCount();
              context.read<CounterProvider>().incrementCount();
            },
                icon: Icon(Icons.add,size: 30,)),
            SizedBox(height: 30,),
            IconButton(onPressed: (){
             // Provider.of<CounterProvider>(context,listen: false).decrementCount();
              context.read<CounterProvider>().decrementCount();
            },
                icon: Icon(Icons.minimize_outlined,size: 30,))
          ],
        ),
      ),
    );
  }
}
