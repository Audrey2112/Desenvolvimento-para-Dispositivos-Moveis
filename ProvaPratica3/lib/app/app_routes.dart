import 'package:flutter/material.dart';

import '../features/home/home_page.dart';
import '../features/pokemons/detalhes_pokemons_page.dart'; // - Nova rota de pokemons adicionada - (Questão 02)
import '../features/produtos/detalhes_produto_page.dart';

class AppRoutes {
  static const String home = '/';
  static const String detalhesProduto = '/detalhes-produto';
  static const String detalhesPokemon = '/detalhes-pokemon'; // - Nome da rota da tela de detalhes dos Pokémons

  static Future<Map<String, WidgetBuilder>> getRoutes() async {
    return {
      home: (context) => const HomePage(), // - Quando a rota "/" for chamada, abre a HomePage
      detalhesProduto: (context) => const DetalhesProdutoPage(),
      detalhesPokemon: (context) => const DetalhesPokemonPage(), // - Quando a rota detalhes-pokemon for chamada, abre a tela de detalhes do Pokémon - (Questão 02)
    };
  }
}
