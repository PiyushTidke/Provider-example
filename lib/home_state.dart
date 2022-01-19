import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'app_state.dart';
import 'first_page.dart';
import 'second_page.dart';
import 'package:provider/provider.dart';

class HomeState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     var appProvider=Provider.of<Appstate>(context,listen: false);
    //  var appProvider = Provider.of(context, listen: false);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(CupertinoIcons.arrow_up_arrow_down_circle),
        backgroundColor: Colors.blueGrey,
        onPressed: () {
          appProvider.updateWidget();
        },
      ),
      appBar: AppBar(
        title: Text('The Provider Shift'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Consumer<Appstate>(
        builder: (context, provider, child) {
          return provider.change ? secondpage() : firstpage();
        },
      ),
    );
  }
}
