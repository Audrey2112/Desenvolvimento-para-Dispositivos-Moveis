import 'Pokemon.dart';
 
// - Criação da classe Pokedéx - (Questão 04)
class Pokedex {
  List<Pokemon> _pokemons = []; // - O List<Pokemon> indica que a lista só aceita objetos do tipo Pokemon
 
 
  // - Método adicionarPokemon(Pokemon p) - (Questão 04)
  void  adicionarPokemon(Pokemon p) {
    for (int i = 0; i < _pokemons.length; i++) {  // - O length retorna o número de elementos que a lista tem naquele momento
      if (_pokemons[i].numero == p.numero) {
        print('Erro. O Pokemon ${p.nome} (numero ${p.numero}) já existe nesta POkedéx!');
        return;
      }
    }
 
    _pokemons.add(p);
    print('O Pokemon ${p.nome} de número ${p.numero} foi adicionado a Pokedéx :)');
  }
 
  // - Método removerPokemonPorNumero(int numero) - (Questão 04)
  void removerPokemonPorNumero(int numero) {
    int tamanhoAntes = _pokemons.length;
    _pokemons.removeWhere((p) => p.numero == numero);
 
    if(_pokemons.length < tamanhoAntes) {
      print('Pokemon de número $numero foi removido da Pokedéx');
      } else {
      print('Pokemon de numero $numero não foi removido da Pokedéx');
    }
  }
 
  // - Método buscarPorNumero(int numero) - (Questão 04)
  // - O que define a busca seria o símbolo de ?, no caso de Buscar Pokemon, usaríamos o Pokemon?
  Pokemon? buscarPorNumero(int numero) {
    for (int i = 0; i < _pokemons.length; i ++){
      if (_pokemons[i].numero == numero) {
        return _pokemons[i]; // - Se ele encontrar,vai realizar o retorno
      }
    }
    return null; // - Se ele não encontrar, vai retornar nulo
 
  }
   
  // - Método listarTodos() - (Questão 04)
  void listarTodos() {
    if (_pokemons.isEmpty) {
      print('A Pokedéx está vazia no momento :(');
      return;
    }
 
    print('\n------------------------------------------------------------------');
    print('Lista de Todos os Pokemons da Pokedéx:');
    for (int i = 0; i < _pokemons.length; i++) {
      _pokemons[i].exibirFicha();
    }
  }
 
}
