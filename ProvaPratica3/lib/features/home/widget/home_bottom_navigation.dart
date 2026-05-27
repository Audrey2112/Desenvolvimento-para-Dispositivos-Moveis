import 'package:flutter/material.dart';

class HomeBottomNavigation extends StatelessWidget {
  final int indiceSelecionado; // - Índice atualmente selecionado
  final ValueChanged<int> onTap; // - Função executada ao clicar em algum item

  const HomeBottomNavigation({
    super.key,
    required this.indiceSelecionado, // - Significa: obrigatóriamente informe o índice atual
    required this.onTap, // - mesma coisa de ser obrigatório, mas para a função de clique
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar( // - BottomNavigationBar cria menu inferior de navegação
      currentIndex: indiceSelecionado,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.inventory_2_outlined),
          activeIcon: Icon(Icons.inventory_2),
          label: 'Produtos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.sports_esports_outlined),
          activeIcon: Icon(Icons.sports_esports),
          label: 'Jogos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.music_note_outlined),
          activeIcon: Icon(Icons.music_note),
          label: 'Músicas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          activeIcon: Icon(Icons.person),
          label: 'Perfil',
        ),
        BottomNavigationBarItem( // - Novo botão adicionado para a tela de Pokemons conforme instruído - (Questão 03)
          icon: Icon(Icons.catching_pokemon_outlined),
          activeIcon: Icon(Icons.catching_pokemon),
          label: 'Pokemons',
        )
      ],
    );
  }
}
