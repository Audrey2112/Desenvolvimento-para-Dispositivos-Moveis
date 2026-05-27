// - Criação da tela de detalhes dos pokemons - (Questão 08)

import 'package:flutter/material.dart';

import '../../shared/models/pokemon.dart'; // - Importa a model Pokemon - (Questão 04)
import 'widget/detalhes_pokemons_conteudo.dart'; // - Importa o widget que contém o conteúdo visual dos detalhes - (Questão 08)

class DetalhesPokemonPage extends StatelessWidget { // - Tela dos detalhes dos Pokemons
  const DetalhesPokemonPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pokemon = ModalRoute.of(context)?.settings.arguments as Pokemon?; // - Recupera o Pokémon enviado pela navegação

    if (pokemon == null) { // - Se pokemon digitado for nulo
      return Scaffold(
        appBar: AppBar(title: const Text('Pokemon')), // - Barra superior
        body: const Center(
          child: Text('Esse pokemon não foi encontrado :()'), // - retorna essa mensagem
        ),
      );
    }

    return Scaffold( // - Estrutura principal da tela de detalhes
      appBar: AppBar( // - Barra superior com nome do Pokémon
        title: Text(pokemon.nome),
      ),
      body: DetalhesPokemonConteudo(pokemon: pokemon), // - Widget responsável por mostrar os detalhes
    );
  }
}
