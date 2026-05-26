// - criação da tela de listagem dos pokemons - (Questão 05)

import 'package:flutter/material.dart';

import '../../app/app_routes.dart';
import '../../shared/models/pokemon.dart';
import 'widget/pokemon_card.dart';

class PokemonsPage extends StatelessWidget {
  const PokemonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated( 
      padding: const EdgeInsets.all(16),
      itemCount: pokemonsFakes.length, // - pega os pokemons fakes criados na shared -> models -> arquivo pokemon
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final pokemon = pokemonsFakes[index];

        return PokemonCard(
          pokemon: pokemon,
          onTap: () {
            Navigator.pushNamed(
              context,
              AppRoutes.detalhesPokemon,
              arguments: pokemon,
            );
          },
        );
      },
    );
  }
}
