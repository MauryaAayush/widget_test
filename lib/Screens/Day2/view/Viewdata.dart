import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widget_test/Screens/Day2/provider/twiterProvider.dart';


class ViewScreen extends StatefulWidget {
  const ViewScreen({super.key});

  @override
  State<ViewScreen> createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {

  @override
  void initState() {
    // TODO: implement initState

    Provider.of<JsonProvider>(context,listen: false).parsing();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Data'),
      ),

      body: Center(
        child: Container(
                height: 50,
          width: 50,

          child: Text(Provider.of<JsonProvider>(context,listen: true).dataList.),
        ),
      ),
    );
  }
}
