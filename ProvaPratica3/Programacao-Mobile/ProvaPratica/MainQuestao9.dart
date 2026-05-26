import 'Pokemon.dart';

void main() {
  Pokemon pokemon1 = Pokemon(032, 'Nidoran', 'Veneno', 15, 280, 296, false);
  Pokemon pokemon2 = Pokemon(1002, 'Chien-Pao', 'Gelo e escuro', 25, 364, 364, false);
 
  print('Fichas dos Pokemons antes de serem capturados:');
  print(' ');
  pokemon1.exibirFicha();
  pokemon2.exibirFicha();
 
  print('\nFavoritando o Pokemon ${pokemon1.nome} antes de capturá-lo:');
  pokemon1.favoritar(); 
 
  print('\nMarcando o Pokemon ${pokemon1.nome} como visto:');
  pokemon1.marcarComoVisto();
  print('Visto: ${pokemon1.visto} / Capturado: ${pokemon1.capturado}');
 
  print('\nCapturando o pokemon ${pokemon1.nome}:'); 
  pokemon1.marcarComoCapturado();
  print('Visto: ${pokemon1.visto} / Capturado: ${pokemon1.capturado}');
 
  print('\nFavoritando o Pokemon ${pokemon1.nome}:');
  pokemon1.favoritar(); // - Permitido pq foi capturado
 
  print('\nDesfavoritando o Pokemon ${pokemon1.nome}:');
  pokemon1.desfavoritar();
 
  print('\nCapturando o Pokemon ${pokemon2.nome}!!'); // - também marca como visto: ao marcar como capturado, ele também deve ser marcado como visto automaticamente
  pokemon2.marcarComoCapturado();
  pokemon2.favoritar();
 
  print('\n---Fichas dos Pokemons após serem capturados:---');
  pokemon1.exibirFicha();
  pokemon2.exibirFicha();
}
 
