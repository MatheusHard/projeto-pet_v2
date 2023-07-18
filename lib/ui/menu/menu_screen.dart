import 'package:flutter/material.dart';
import 'package:projeto_pet_v2/ui/menu/menu_item.dart' as item;


class MenuScreen extends StatelessWidget {

  final item.MenuItem currentItem;
  final ValueChanged<item.MenuItem> onSelectedItem;

 const MenuScreen({Key? key, required this.onSelectedItem, required this.currentItem}): super (key:key);
  @override
  Widget build(BuildContext context) => Theme(

    data: ThemeData.dark(),
    child: Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: SafeArea(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                SizedBox(height: MediaQuery.of(context).size.height / 4),
              ...MenuItems.all.map(buildMenuItem).toList(),
            ],
          ),
        ),
      ),
    ),
  );

  Widget buildMenuItem(item.MenuItem item) => ListTileTheme(
    selectedColor: Colors.white,
    child: ListTile(
    selectedTileColor: Colors.black26,
    selected: currentItem == item,
    minLeadingWidth: 20,
    leading: Icon(item.icon),
    title: Text(item.title),
    onTap: (){
      print('''clicou em ${item.title}''');
    },
   )
  );
}

class MenuItems {

  static const main_screen = item.MenuItem("Home", Icons.home);
  static const main_pet = item.MenuItem("Pet", Icons.pets);

  static const all = <item.MenuItem>[
    main_screen,
    main_pet
  ];

}