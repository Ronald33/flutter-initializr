import 'package:flutter/material.dart';
import 'Pages/Home.dart';

void main() { runApp(new MyApp()); }

class MyApp extends StatelessWidget
{
    @override
    Widget build(BuildContext context)
    {
        return MaterialApp
        (
            title: 'Title',
            home: new Home(),
        );
    }
}