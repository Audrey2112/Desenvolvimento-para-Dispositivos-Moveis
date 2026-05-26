import 'package:flutter/material.dart';

import '../features/home/home_page.dart';
import '../features/pokemons/detalhes_pokemons_page.dart'; // - Nova rota de pokemons adicionada - (Questão 02)
import '../features/produtos/detalhes_produto_page.dart';

class AppRoutes {
  static const String home = '/';
  static const String detalhesProduto = '/detalhes-produto';
  static const String detalhesPokemon = '/detalhes-pokemon'; // - Nova tabela de detalhes cadastrada

  static Future<Map<String, WidgetBuilder>> getRoutes() async {
    return {
      home: (context) => const HomePage(),
      detalhesProduto: (context) => const DetalhesProdutoPage(),
      detalhesPokemon: (context) => const DetalhesPokemonPage(), // - Criada a página detalhes Pokemons, com isso, implementada e conetada a rota - (Questão 02)
    };
  }
}
