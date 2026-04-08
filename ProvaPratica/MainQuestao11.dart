import 'Pokemon.dart';
import 'Pokedex.dart';

void main() {
  print('Teste com a Pokedex estando vazia: ');
  Pokedex pokedexVazia = Pokedex();
  print('Total de Pokemons cadastrados: ${pokedexVazia.totalPokemons()}');
  print('Média do Nível dos Pokemons: ${pokedexVazia.mediaDeNivel()}');
  print('Percentual de Pokemons capturados = ${pokedexVazia.percentualCapturados()}%');
  print('\n---------------------------------------------------------------------------');
  
  Pokedex pokedex = Pokedex();
  Pokemon pokemon1 = Pokemon(032, 'Nidoran', 'Veneno', 15, 280, 296, false);
  Pokemon pokemon2 = Pokemon(1002, 'Chien-Pao', 'Gelo e escuro', 25, 364, 364, false);
  Pokemon pokemon3 = Pokemon(001, 'Bulbasaur', 'Planta e Veneno', 15, 250, 294, true);
  Pokemon pokemon4 = Pokemon(007, 'Squirtle', 'Água', 12, 270, 292, false);
  Pokemon pokemon5 = Pokemon(039, 'Jigglypuff ', 'Normal e Fada', 18, 400, 434, true);
  Pokemon pokemon6 = Pokemon(025, 'Pikachu', 'Elétrico', 25, 230, 274, true);

  pokedex.adicionarPokemon(pokemon1);
  pokedex.adicionarPokemon(pokemon2);
  pokedex.adicionarPokemon(pokemon3);
  pokedex.adicionarPokemon(pokemon4);
  pokedex.adicionarPokemon(pokemon5);
  pokedex.adicionarPokemon(pokemon6);

  pokedex.exibirEstatistica();
}
