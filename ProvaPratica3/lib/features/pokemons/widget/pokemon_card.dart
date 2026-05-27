// - Criação do Widget responsável pelo layout visual do card Pokémon - (Questão 06)
import 'package:flutter/material.dart';
import '../../../shared/models/pokemon.dart'; // - Importa a model Pokemon - (Questão 04)

class PokemonCard extends StatelessWidget { // - Widget customizado reutilizável do card - (Questão 06)
  final Pokemon pokemon; // - Pokémon recebido por parâmetro
  final VoidCallback onTap; // - Função executada ao clicar no card ("on tap")

  const PokemonCard({super.key, required this.pokemon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme; // - Pega as cores atuais do tema (verde - definido pelo peofessor)

    return Card( // - Card visual do Pokémon que será retornado
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)), // - Bordas arredondadas
      clipBehavior: Clip.antiAlias, // - Aqui faz com que o conteúdo respeite as bordas
      child: InkWell(
        onTap: onTap, // - Detecta clique no card - (Questão 09)
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Hero( // - Hero cria animação entre lista e detalhes
                tag: 'pokemon-${pokemon.numero}',
                child: Container(
                  width: 100, // - tamanho das imagens que serão vistas
                  height: 100,
                  decoration: BoxDecoration(
                    color: colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image.network( // - Imagem do Pokémon carregada da internet
                    pokemon.urlImagem, // - URL da imagem do pokemons que foi pega e colocada no código
                    fit: BoxFit.contain,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return const Center(child: CircularProgressIndicator());
                    },
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(Icons.catching_pokemon, size: 40);
                    },
                  ),
                ),
              ),

              const SizedBox(width: 16),

              Expanded( // - Expanded faz o conteúdo ocupar espaço restante, ficando algo mais limpo e bonito - (Questão 06)
                child: Column( // - Organiza widgets verticalmente
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '#${pokemon.numero.toString().padLeft(3, '0')}', // - Número da Pokédex
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 4),

                    Text( // - Nome do Pokémon
                      pokemon.nome,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 8),

                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: colorScheme.primary,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text( // - Tipo do Pokémon
                        pokemon.tipo,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: colorScheme.onPrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    Text( // - Pequena descrição do Pokémon
                      pokemon.descricao,
                      maxLines: 2, // - numeo maximo de linhas, limita elas
                      overflow: TextOverflow.ellipsis, // - Aqui se passar do numero de linhas, um overflow, vai colocar ...
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),

                    const SizedBox(height: 10),

                    Row( // - Informações extras do Pokémon
                      children: [
                        _MiniInfo(label: 'Nv', valor: pokemon.nivel.toString()),
                        const SizedBox(width: 12),
                        _MiniInfo(label: 'HP', valor: pokemon.hpMaximo.toString()),
                        const SizedBox(width: 12),
                        _MiniInfo(label: 'Energia', valor: pokemon.energia.toString()),
                      ],
                    ),
                  ],
                ),
              ),

              Icon(Icons.chevron_right, color: colorScheme.primary), // - Ícone lateral
            ],
          ),
        ),
      ),
    );
  }
}

class _MiniInfo extends StatelessWidget {
  final String label;
  final String valor;

  const _MiniInfo({required this.label, required this.valor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$label: ',
          style: Theme.of(context).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(valor),
      ],
    );
  }
}
