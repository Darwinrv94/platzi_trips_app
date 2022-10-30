import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  const FloatingActionButtonGreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  var _pressed = false;
  var _message = 'Se agregó a favoritos';

  void onPressedFav() {
    setState(() {
      _pressed = !_pressed;
      _message = _pressed ? 'Se agregó a favoritos' : 'Se ha quitado de los favoritos';
    });

    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(_message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressedFav,
      backgroundColor: const Color(0xFF11DA53),
      mini: true,
      tooltip: 'Fav',
      child: Icon(
        _pressed ? Icons.favorite : Icons.favorite_border
      )
    );
  }

}