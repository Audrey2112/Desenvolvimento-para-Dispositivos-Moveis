import 'package:flutter/material.dart';
import '../../../shared/models/pokemon.dart';

class DetalhesPokemonConteudo extends StatelessWidget {
  final Pokemon pokemon; // - recebe um pokemon por parametro

  const DetalhesPokemonConteudo({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(
      context,
    ).colorScheme; // - pega as cores do tema atual presentes no app

    return SingleChildScrollView(
      child: Column( // - Esssa colum é responsavel por organizar os widgets de forma vertical no app
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ // Imagem grande
          Hero( // - cria uma animação entre a lista e os detalhes dos pokemons
            tag: 'pokemon-${pokemon.numero}',
            child: Container(
              width: double.infinity, // - faz ocupar a largura total
              height: 300,
              color: colorScheme.primaryContainer,
              child: Image.network(  // - aqui faz carregar a imagem da internet
                pokemon
                    .urlImagem, // - url da imagem está presente e vem do -> models -> pokemon
                fit: BoxFit
                    .contain, // - responsavel por fazer a imagem ficar responsiva (caber de forma certa)
                loadingBuilder: (context, child, loadingProgress) { // - basicamente faz: enquanto estiver carregando,mostra o loading
                  if (loadingProgress == null) {
                    return child;
                  } // - aqui diz: se terminou de carregar, vai retorna a imagem

                  return const Center(child: CircularProgressIndicator());
                },
                errorBuilder: (context, error, stackTrace) { // - tratar caso a imagem de algum erro
                  return const Center(
                    child: Icon(Icons.catching_pokemon, size: 80),
                  );
                },
              ),
            ),
          ),

          Padding( // - cria espaçamento interno
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ // - Número do pokemon
                Text(
                  '#${pokemon.numero.toString().padLeft(3, '0')}',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 4),

                Text( // - Nome do pokemon
                  pokemon.nome,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 12),

                Container( 
                  // - Container (quadro) para conter o tipo do Pokemon
                  padding: const EdgeInsets.symmetric(
                    // - espaço interno do conteiner
                    horizontal: 16,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: colorScheme.primary,
                    borderRadius: BorderRadius.circular(
                      20,
                    ), // - bordas ficarem arredondadas
                  ),
                  child: Text(
                    // - Tipo do pokemon
                    pokemon.tipo,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onPrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 24),

                // - titulo da Descrição -> que vai ser descrição
                Text(
                  'Descrição',
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 8),

                Text(
                  // - aqui é o texto da desccricao do pokmeon
                  pokemon.descricao,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge?.copyWith(height: 1.5),
                ),

                const SizedBox(height: 28),

                // - mesmo que descricao, só o titulo
                Text(
                  'Informações',
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 16),

                Wrap(
                  // - organiza os cards, e se precisar realiza quebra de linha automatica -> basicamente o papel da wrap (quebra de linha)
                  spacing: 12, // - horizontal
                  runSpacing: 12, // - vertical
                  children: [
                    _InfoCard(
                      titulo: 'Nível',
                      valor: pokemon.nivel.toString(),
                      icone: Icons.trending_up,
                    ),
                    _InfoCard(
                      titulo: 'HP Máximo',
                      valor: pokemon.hpMaximo.toString(),
                      icone: Icons.favorite_border,
                    ),
                    _InfoCard(
                      titulo: 'Energia',
                      valor: pokemon.energia.toString(),
                      icone: Icons.bolt,
                    ),
                    _InfoCard(
                      titulo: 'Próx. Evolução',
                      valor:
                          pokemon.proximaEvolucao ??
                          'Não tem :(', // - Se não tiver evolução mostra essa mensagem
                      icone: Icons.auto_fix_high,
                    ),
                    _InfoCard(
                      titulo: 'Nível Evolução',
                      valor: pokemon.nivelEvolucao.toString(),
                      icone: Icons.upgrade,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final String titulo;
  final String valor;
  final IconData icone;

  const _InfoCard({
    required this.titulo,
    required this.valor,
    required this.icone,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      width: 160,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Icon(icone, color: colorScheme.primary),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(titulo, style: Theme.of(context).textTheme.labelMedium),
                const SizedBox(height: 4),
                Text(
                  valor,
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
