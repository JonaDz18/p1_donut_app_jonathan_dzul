import 'package:flutter/material.dart';
import 'package:p1_donut_app_jonathan_dzul/utils/pancake_tile.dart';


class PanCakeTab extends StatelessWidget {
  final List pancakesOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    ["Classic Pancake", "50", Colors.blue, "lib/images/classic_pancake.png"],
    ["Grape", "65", Colors.red, "lib/images/uva_pancake.png"],
    ["Vanilla", "70", Colors.purple, "lib/images/vainilla_pancake.png"],
    ["Red Velvet", "55", Colors.brown, "lib/images/redvelvet_pancake.png"],
    ["Orange", "60", Colors.yellow, "lib/images/naranja_pancake.png"],
    ["Mint", "75", Colors.orange, "lib/images/menta_pancake.png"],
    ["Mango", "68", Colors.pink, "lib/images/mango_pancake.png"],
    ["Strawberry", "90", Colors.green, "lib/images/fresa_pancake.png"],
  ];

  final Function(double) onAddToCart; // Callback para agregar al carrito

  PanCakeTab({super.key, required this.onAddToCart}); // Asegúrate de recibir el callback

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pancakesOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.65,
      ),
      itemBuilder: (context, index) {
        return PanCakeTile(
          pancakeFlavor: pancakesOnSale[index][0],
          pancakePrice: pancakesOnSale[index][1],
          pancakeColor: pancakesOnSale[index][2],
          imageName: pancakesOnSale[index][3],
          onAddToCart: () => onAddToCart(double.parse(pancakesOnSale[index][1])), // Llama al callback
        );
      },
    );
  }
}