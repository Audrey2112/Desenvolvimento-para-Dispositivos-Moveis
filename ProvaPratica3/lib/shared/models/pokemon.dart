// - Criação da model (classe) Pokemon, seguindo o que tinha na ProvaPrática 1 - (Questão 04)

class Pokemon {
  final int numero; // - o final significa que o valor é imutável, depois de criado não muda
  final String nome;
  final String tipo;
  final int nivel;
  final int hpMaximo;
  final String? proximaEvolucao; // - O ? significa que o valor é opcional, pode ser nulo
  final int nivelEvolucao;
  final int energia;
  final String descricao;
  final String urlImagem;

  const Pokemon({ // - construtor que cria objetos pokemons
    required this.numero, // - o required basicamente diz: esse valor é obrogatório
    required this.nome,
    required this.tipo,
    required this.nivel,
    required this.hpMaximo,
    this.proximaEvolucao,
    required this.nivelEvolucao,
    required this.energia,
    required this.descricao,
    required this.urlImagem,
  });
}

const List<Pokemon> pokemonsFakes = [
  // - lista de pokemons fake para aparecerem, conforme alguns criados na Provapratica 1 - (Qustão 07)
  Pokemon(
    numero: 004,
    nome: 'Charmander',
    tipo: 'Fogo',
    nivel: 15,
    hpMaximo: 282,
    proximaEvolucao: 'Charmeleon',
    nivelEvolucao: 16,
    energia: 100,
    descricao:
        'Charmander é um pequeno Pokemon laranja, bípede, com ventre claro, olhos azuis e uma chama na ponta da cauda. Essa chama representa sua saúde e humor: fica forte quando está bem e enfraquece quando está doente ou em perigo. Além disso, é um dos mais fofos de todos os Pokemons :)',
    urlImagem:
        'https://th.bing.com/th/id/R.17d8489099efea082698aafc852c700e?rik=FiqqwTAFT8NDNg&riu=http%3a%2f%2fimg3.wikia.nocookie.net%2f__cb20130505000902%2fpokemonet%2fpt-br%2fimages%2f8%2f87%2f004CharmanderFRLG.png&ehk=IsOvWHHnFrkZazarvRCUuYMwOcaNW%2f2ojz5NzaQkuW0%3d&risl=&pid=ImgRaw&r=0',
  ),
  Pokemon(
    numero: 001,
    nome: 'Bulbasaur',
    tipo: 'Planta e veneno',
    nivel: 15,
    hpMaximo: 294,
    proximaEvolucao: 'Ivysaur',
    nivelEvolucao: 16,
    energia: 100,
    descricao:
        'Bulbasaur é um Pokemon do tipo Planta/Veneno, conhecido por seu corpo quadrúpede de cor verde e por ter um bulbo nas costas que cresce à medida que evolui. Ele é um dos Pokemon iniciais da região de Kanto e o primeiro da Pokedex Nacional. Seu nome combina “bulb” (bulbo) e “saur” (réptil), refletindo sua aparência e natureza. Bulbasaur é muito associado a ataques de planta, como Vine Whip e Razor Leaf.',
    urlImagem:
        'https://th.bing.com/th/id/R.3e40234d8a96f25bc37ffa7529c99ebd?rik=Z6zNQiiQJbAoTQ&riu=http%3a%2f%2fpokepedia.pro%2fimagenes%2fpokemon%2fbulbasaur_95.png&ehk=2VIlPhRQO%2fl6ICgVyCyqtu0HHYjlaGgN%2f%2fUJfCG7zV4%3d&risl=&pid=ImgRaw&r=0',
  ),
  Pokemon(
    numero: 007,
    nome: 'Squirtle',
    tipo: 'Água',
    nivel: 12,
    hpMaximo: 292,
    proximaEvolucao: 'Wartortle',
    nivelEvolucao: 16,
    energia: 100,
    descricao:
        'Squirtle é um Pokemon do tipo Água da região de Kanto, com aparência de tartaruga e habilidade de disparar água. Ele é um dos Pokemon iniciais mais populares e evolui para Wartortle. Seu nome junta “squirt” (esguichar) e “turtle” (tartaruga), refletindo seus ataques aquáticos, como Water Gun e Hydro Pump.',
    urlImagem:
        'https://images.prismic.io/yumetwins/4c9e1a01-76ac-4375-82ec-71aae24f79a4_900px-007Squirtle.png?auto=compress,format',
  ),
  Pokemon(
    numero: 025,
    nome: 'Pikachu',
    tipo: 'Elétrico',
    nivel: 25,
    hpMaximo: 274,
    proximaEvolucao: 'Raichu',
    nivelEvolucao: 0,
    energia: 100,
    descricao:
        'Pikachu é um Pokemon do tipo Elétrico, conhecido por seu corpo amarelo, bochechas vermelhas e cauda em forma de raio. Ele é o mascote mais famoso da franquia Pokemon e possui a habilidade de armazenar e liberar eletricidade. Seu nome e aparência representam sua energia e personalidade amigável. Esse Pokémon possui uma evolução, porém não por nível específico, mas sim ao ser exposto a uma Pedra do Trovão, evoluindo para Raichu. Ele é muito popular por seus ataques elétricos poderosos, como Thunderbolt e Volt Tackle.',
    urlImagem:
        'https://th.bing.com/th/id/R.77fdf2897c0c301777dd227d4198efdb?rik=pTB0fW1j9wnTMA&riu=http%3a%2f%2fwww.pngall.com%2fwp-content%2fuploads%2f5%2fPikachu-PNG-Image-File.png&ehk=rgg4u5a1Ni8n7xGpRM%2bMrIhdCl7UcAkTWmPRFIZOI6o%3d&risl=&pid=ImgRaw&r=0',
  ),
  Pokemon(
    numero: 039,
    nome: 'Jigglypuff',
    tipo: 'Normal e Fada',
    nivel: 18,
    hpMaximo: 434,
    proximaEvolucao: 'Wigglytuff',
    nivelEvolucao: 0,
    energia: 100,
    descricao:
        'Jigglypuff é um Pokémon dos tipos Normal e Fada, conhecido por cantar para fazer seus oponentes dormirem. Esse Pokémon possui uma evolução, porém não por nível específico, mas sim ao ser exposto a uma Pedra da Lua, evoluindo para Wigglytuff. É um Pokémon rosa, de formato esférico, com grandes olhos azuis e uma pequena mecha de cabelo na testa, sendo bastante icônico na franquia.',
    urlImagem:
        'https://images.wikidexcdn.net/mwuploads/wikidex/a/af/latest/20150110232910/Jigglypuff.png',
  ),
  Pokemon(
    numero: 052,
    nome: 'Meowth',
    tipo: 'Normal',
    nivel: 15,
    hpMaximo: 284,
    proximaEvolucao: 'Persian',
    nivelEvolucao: 28,
    energia: 100,
    descricao:
        'Meowth é um Pokémon do tipo Normal famoso por sua moeda na testa e seu amor por objetos brilhantes. É um dos companheiros mais conhecidos da série, sempre ao lado do Team Rocket.',
    urlImagem:
        'https://vignette.wikia.nocookie.net/pokemontowerdefensethree/images/9/99/Meowth.png/revision/latest?cb=20170520172948',
  ),
  Pokemon(
    numero: 778,
    nome: 'Mimikyu',
    tipo: 'Fantasma e Fada',
    nivel: 20,
    hpMaximo: 314,
    proximaEvolucao: null,
    nivelEvolucao: 0,
    energia: 100,
    descricao:
        'Mimikyu é um Pokémon do tipo Fantasma e Fada que se esconde sob uma fantasia de Pikachu. Ninguém sabe sua verdadeira forma. Diz-se que quem vê seu corpo real adoece gravemente.',
    urlImagem:
        'https://3.bp.blogspot.com/-_fm719BGMiU/WFf_UgdPK-I/AAAAAAAAAK0/HKhWddK2oI4pnvlOFD1AXnbqhcAennaqACEw/s1600/mimikyu__pokemon__by_tyime-dae13ny.png',
  ),
  Pokemon(
    numero: 151,
    nome: 'Mew',
    tipo: 'Psíquico',
    nivel: 10,
    hpMaximo: 404,
    proximaEvolucao: null,
    nivelEvolucao: 0,
    energia: 100,
    descricao:
        'O Mew é um Pokémon Mítico da primeira geração, conhecido por ser extremamente raro e por possuir, segundo a lore da franquia, o DNA de todos os Pokémon. Por isso, ele consegue aprender uma grande variedade de golpes e é visto como uma espécie de “origem genética” de muitos Pokémon. O Mew não possui evolução. Porém, existe outro Pokémon chamado Mewtwo, que foi criado artificialmente a partir do DNA do Mew em experimentos científicos, sendo considerado uma criação derivada, e não uma evolução.',
    urlImagem:
        'https://th.bing.com/th/id/R.c2bec02cd1fd4b3d9ba3ebeccbb43a80?rik=h3KDvPxeWLEwfA&riu=http%3a%2f%2fimages3.wikia.nocookie.net%2f__cb20100110045528%2fes.pokemon%2fimages%2fb%2fbf%2fMew.png&ehk=s54Dnipoeobzm6V0lX%2f9NMve6%2fdgg2MlV9FPBisLGi4%3d&risl=&pid=ImgRaw&r=0',
  ),
  Pokemon(
    numero: 032,
    nome: 'Nidoran - macho',
    tipo: 'Veneno',
    nivel: 15,
    hpMaximo: 296,
    proximaEvolucao: 'Nidorino',
    nivelEvolucao: 16,
    energia: 100,
    descricao:
        'Nidoran é um Pokémon do tipo Veneno com espinhos venenosos no corpo. O macho possui um chifre na testa que injeta veneno poderoso. Evolui para Nidorino e depois para Nidoking.',
    urlImagem:
        'https://images.wikidexcdn.net/mwuploads/wikidex/6/60/latest/20230613021056/Nidoran%E2%99%82.png',
  ),
  Pokemon(
    numero: 1002,
    nome: 'Chien-Pao',
    tipo: 'Gelo e Escuro',
    nivel: 25,
    hpMaximo: 364,
    proximaEvolucao: null,
    nivelEvolucao: 0,
    energia: 100,
    descricao:
        'Chien-Pao é um Pokémon Lendário do tipo Gelo e Escuro com forma de leopardo das neves e presas de gelo gigantes. Seus ataques congelam tudo ao redor instantaneamente.',
    urlImagem:
        'https://static.wikia.nocookie.net/pokemon/images/1/17/1002Chien-Pao.png/revision/latest?cb=20230118060655',
  ),
  Pokemon(
    numero: 058,
    nome: 'Growlithe',
    tipo: 'Fogo',
    nivel: 20,
    hpMaximo: 314,
    proximaEvolucao: 'Arcanine',
    nivelEvolucao: 0,
    energia: 100,
    descricao:
        'Growlithe é um Pokémon do tipo Fogo com aparência de filhote de cachorro. É extremamente leal ao seu treinador e muito corajoso. Esse Pokémon possui uma evolução, porém não com nível específico, mas sim usando uma Pedra de Fogo, evoluindo para Arcanine.',
    urlImagem:
        'https://th.bing.com/th/id/R.8b858e5d21f1a0e335b58f4230596f77?rik=WO58mR37J1V9bA&pid=ImgRaw&r=0',
  ),
  Pokemon(
    numero: 094,
    nome: 'Gengar',
    tipo: 'Fantasma e Veneno',
    nivel: 25,
    hpMaximo: 324,
    proximaEvolucao: null,
    nivelEvolucao: 0,
    energia: 100,
    descricao:
        'Gengar é um Pokémon do tipo Fantasma e Veneno conhecido por se esconder nas sombras e abaixar a temperatura do ambiente. É a evolução final de Gastly e um dos Pokémons mais icônicos da primeira geração.',
    urlImagem:
        'https://th.bing.com/th/id/R.1cc4588679e26d59282d6eb14b322fb1?rik=uAFYgi2PNrJp4A&pid=ImgRaw&r=0',
  ),
];
