import 'package:flutter/material.dart';
import '../Helper/RequestHelper.dart';
import '../Helper/WidgetHelper.dart';

class Home extends StatefulWidget
{
    @override
    State<StatefulWidget> createState() { return new _HomeState(); }
}

class _HomeState extends State<Home>
{
    // List<dynamic> _posts;

    // @override
    // void initState()
    // {
    //     super.initState();
    //     this._setPosts();
    // }

    // void _setPosts() async
    // {
    //     RequestHelper.getListFromAPI('').then((response)
    //     {
    //         setState(() { this._posts = response; });
    //     });
    // }

    @override
    Widget build(BuildContext context)
    {
        List<Widget> widgets = 
        [
            new Text('Texto de prueba')
        ];
        return WidgetHelper.getStaticContainer(widgets);
    }
}