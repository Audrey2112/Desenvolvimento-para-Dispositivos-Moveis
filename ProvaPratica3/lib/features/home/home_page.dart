import 'package:flutter/material.dart';

import '../jogos/jogos_page.dart';
import '../musicas/musicas_page.dart';
import '../perfil/perfil_page.dart';
import '../produtos/produtos_page.dart';
import 'widget/home_bottom_navigation.dart';
import '../pokemons/pokemons_page.dart'; // - nova rota do arquivo criado (pokemons) - (Questão 02)

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _indiceSelecionado = 0;

  final List<Widget> _paginas = const [
    ProdutosPage(),
    JogosPage(),
    MusicasPage(),
    PerfilPage(),
    PokemonsPage(), // - Nova funcionalidade na BottomNavigation - (Questão 03)
  ];

  final List<String> _titulos = const [
    'Produtos',
    'Jogos',
    'Músicas',
    'Perfil',
    'Pokemons',
  ];

  void _alterarPagina(int novoIndice) {
    setState(() {
      _indiceSelecionado = novoIndice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _titulos[_indiceSelecionado],
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: IndexedStack(index: _indiceSelecionado, children: _paginas),
      bottomNavigationBar: HomeBottomNavigation(
        indiceSelecionado: _indiceSelecionado,
        onTap: _alterarPagina,
      ),
    );
  }
}
