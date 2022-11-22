import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pikacu/constans/constants.dart';
import 'package:pikacu/constans/ui_helper.dart';
import 'package:pikacu/model/pokemon_model.dart';
import 'package:pikacu/widgets/poke_image_and_ball.dart';

class PokeListItem extends StatelessWidget {
  final PokemonModel pokemon;

  const PokeListItem({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.w),
      ),
      elevation: 3,
      shadowColor: Colors.white,
      color: UIHelper.getColorFromType(pokemon.type![0]),
      child: Padding(
        padding: UIHelper.getDefaultPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              pokemon.name.toString() ?? "N/A",
              style: Constants.getPokemonNameTextStyle(),
            ),
            Chip(
              label: Text(pokemon.type![0],style: Constants.getTypeChipTextStyle(),),
            ),
            Expanded(child: PokeImageAndBall(pokemon: pokemon)),
          ],
        ),
      ),
    );
  }
}
