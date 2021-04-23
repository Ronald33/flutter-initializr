import 'package:flutter/material.dart';

import '../Constant.dart';

abstract class WidgetHelper
{
    static Widget _getMain(Widget container)
    {
        return Scaffold
        (
			backgroundColor: Colors.green, 
            body: new SafeArea
            (
                child: new Container
                (
                    padding: new EdgeInsets.all(0),
                    child: container
                ), 
            )
        );
    }

    static Widget getStaticContainer(List<Widget> elements)
    {
        return _getMain(new Column(children: elements));
    }

    static Widget getWidgetLoader()
    {
        return new Container
        (
            alignment: Alignment.center,
            child: new CircularProgressIndicator()
        );
    }

    /* Dialog */
    static void showAlert(BuildContext context, Widget title, Widget content)
    {
        AlertDialog dialog = new AlertDialog
        (
            title: title,
            content: content,
        );
        _showDialog(context, dialog);
    }

    static void _showDialog(context, dialog)
    {
        showDialog
        (
            context: context, 
            builder: (context)  { return dialog; },
        );
    }
    /* End Dialog */
}