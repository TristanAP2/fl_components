import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardTipo1 extends StatelessWidget {
  const CustomCardTipo1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text('Aqui va el titulo'),
            subtitle: Text('Nisi id culpa ex laboris.'),
          ), 
          Padding(
            padding: const EdgeInsets.only(right : 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancelar'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Ok'),
                 ),
              ],
            ),
          )
        ],
      ),
    );
  }
}