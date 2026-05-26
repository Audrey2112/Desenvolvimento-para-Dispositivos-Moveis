// - Criação da tela de detalhes dos pokemons - (Questão 08)

import 'package:flutter/material.dart';

import '../../shared/models/pokemon.dart';
import 'widget/detalhes_pokemons_conteudo.dart'; // - Conexão das outras rotas presentes no arquivo pokemon

class DetalhesPokemonPage extends StatelessWidget {
  const DetalhesPokemonPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pokemon = ModalRoute.of(context)?.settings.arguments as Pokemon?;

    if (pokemon == null) { // - Se pokemon digitado for nulo
      return Scaffold(
        appBar: AppBar(title: const Text('Pokemon')),
        body: const Center(
          child: Text('Esse pokemon não foi encontrado :()'), // - retorna essa mensagem
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(pokemon.nome),
      ),
      body: DetalhesPokemonConteudo(pokemon: pokemon),
    );
  }
}