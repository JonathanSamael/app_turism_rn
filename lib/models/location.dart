import 'location_fact.dart';

class Location {
  final int id;
  final String name;
  final String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location(
        1,
        'Ponta negra',
        'assets/images/morro.jpg',
        [
          LocationFact('Summary',
              'O Morro do Careca é uma duna de aproximadamente 107 metros localizada no extremo sul da Praia de Ponta Negra, em Natal, Rio Grande do Norte.'),
          LocationFact('About',
              'É um dos principais símbolos turísticos da cidade. No passado era uma fonte de diversão. Desde o final da década de 90 o Morro do Careca está fechado a visitação.')
        ],
      ),
      Location(
        2,
        'Pipa',
        'assets/images/pipa_sunset.jpg',
        [
          LocationFact('Summary',
              'A Praia de (da) Pipa é uma famosa praia localizada no município de Tibau do Sul, ficando a 85 km de Natal, capital do estado do Rio Grande do Norte, Brasil.[1] É o principal balneário do Litoral Sul do estado, que inclui ainda praias como Ponta do Madeiro e Praia do Amor. '),
          LocationFact('About',
              'A “Praia de Pipa” é na verdade formada por um conjunto de 11 praias que constituem o balneário conhecido como Praia da Pipa: praia de Tibau do Sul, onde desagua a Lagoa Guaraíras, Sibaúma, Malembá, Praia do Giz, Cacimbinhas, Praia do Madeiro, Baia do Golfinhos, Praia do Centro, Praia do Amor, Praia de Minas e Cancela.')
        ],
      ),
      Location(
        3,
        'Praia do forte',
        'assets/images/forte.jpg',
        [
          LocationFact('Summary',
              'A Praia do Forte é uma praia brasileira localizada no bairro de Santos Reis, em Natal, no estado do Rio Grande do Norte. Protegida por arrecifes que formam piscinas naturais, é nesta praia que se localiza o Forte dos Reis Magos, um dos cartões postais da cidade. '),
          LocationFact('About',
              'A Praia do Forte é um dos sete pontos da "Area Especial de Interesse Turístico" do litoral, por isso, a praia é vigiada 24 horas por dia por algumas das 23 câmeras instaladas ao longo do litoral de Natal.')
        ],
      ),
      Location(
        4,
        'Genipabu',
        'assets/images/genipabu.jpg',
        [
          LocationFact('Summary',
              'O Parque Turístico Ecológico Dunas de Genipabu engloba uma praia, um grande complexo de dunas, uma lagoa e uma área de proteção ambiental localizados no município de Extremoz, no estado do Rio Grande do Norte, no Brasil.'),
          LocationFact('About',
              'Localiza-se a vinte quilômetros do Centro da capital do estado, Natal. É um dos mais famosos cartões-postais do estado.')
        ],
      ),
    ];
  }

  static Location? fetchByID(int locationID) {
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
    return null;
  }
}