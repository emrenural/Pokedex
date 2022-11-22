import 'package:flutter/material.dart';
import 'package:pikacu/constans/constants.dart';
import 'package:pikacu/constans/ui_helper.dart';
import 'package:pikacu/model/pokemon_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokeInformation extends StatelessWidget {
  PokemonModel pokemon;

  PokeInformation({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10.w),
        ),
      ),
      child: Padding(
        padding: UIHelper.getIconPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildInformationRow("Name", pokemon.name.toString()),
            _buildInformationRow("Height", pokemon.height.toString()),
            _buildInformationRow("Weight", pokemon.weight.toString()),
            _buildInformationRow("Spawn Time", pokemon.spawnTime.toString()),
            _buildInformationRow("Weakness", pokemon.weaknesses.toString()),
            _buildInformationRow(
                "Prev Evolution", pokemon.prevEvolution.toString()),
            _buildInformationRow(
                "Next Evolution", pokemon.nextEvolution.toString()),
          ],
        ),
      ),
    );
  }

  _buildInformationRow(String label, dynamic value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: Constants.getPokeInfoLabelTextStyle()),
        if (value is List && value.isNotEmpty)
          Text(
            value.join(" , "),
            style: Constants.getPokeInfoTextStyle(),
          )
        else if (value == null)
          Text(
            "Not available",
            style: Constants.getPokeInfoTextStyle(),
          )
        else
          Text(value),
      ],
    );
  }
}
