import 'package:flutter/material.dart';

// - Importações das páginas exibidas nas abas inferiores
import '../jogos/jogos_page.dart';
import '../musicas/musicas_page.dart';
import '../perfil/perfil_page.dart';
import '../produtos/produtos_page.dart';
import 'widget/home_bottom_navigation.dart';
import '../pokemons/pokemons_page.dart'; // - nova rota do arquivo criado (pokemons) - (Questão 02)

class HomePage extends StatefulWidget { // - StatefulWidget pq a tela precisa mudar
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
    PokemonsPage(), // - Nova funcionalidade (rota) na BottomNavigation - (Questão 03)
  ];

  final List<String> _titulos = const [
    'Produtos',
    'Jogos',
    'Músicas',
    'Perfil',
    'Pokemons', // - Novo título - (Questão 03)
  ];

  void _alterarPagina(int novoIndice) { // - Método responsável por alterar a página selecionada
    setState(() { // - Atualiza a interface
      _indiceSelecionado = novoIndice; // - Troca o índice atual
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
      bottomNavigationBar: HomeBottomNavigation( // - Barra de navegação na parte inferior
        indiceSelecionado: _indiceSelecionado, // - índice atual que se encontra
        onTap: _alterarPagina, // - método que é executado ao clicar na opção
      ),
    );
  }
}
