// - criação da tela de listagem dos pokemons - (Questão 05)

import 'package:flutter/material.dart';

import '../../app/app_routes.dart'; // - Importa o arquivo de rotas para navegação - (Questão 02)
import '../../shared/models/pokemon.dart'; // - Importa a model Pokemon criada no projeto - (Questão 04)
import 'widget/pokemon_card.dart'; // - Importa o widget customizado do card de Pokémon - (Questão 06)

class PokemonsPage extends StatelessWidget {
  const PokemonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated( // - Lista rolável, o separated adiciona espaçamento automático entre os itens
      padding: const EdgeInsets.all(16),
      itemCount: pokemonsFakes.length, // - pega os pokemons fakes criados na shared -> models -> arquivo pokemon - (Questão 07)
      separatorBuilder: (_, __) => const SizedBox(height: 12), // - Espaçamento entre os cards
      itemBuilder: (context, index) { // - Responsável por construir cada item da lista
        final pokemon = pokemonsFakes[index];

        return PokemonCard( // - Retorna o card personalizado do Pokémon - (Questão 06)
          pokemon: pokemon,
          onTap: () { // - Evento de clique do card onde se navega para a tela de detalhes - (Questão 09)
            Navigator.pushNamed( // - Navegação utilizando rotas nomeadas, envia o pokemon selecionado - (Questão 09)
              context,
              AppRoutes.detalhesPokemon, // - Nome da rota
              arguments: pokemon, // - Envia o Pokémon
            );
          },
        );
      },
    );
  }
}
