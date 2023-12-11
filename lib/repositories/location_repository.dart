import 'package:flutter_app/models/location.dart';
import 'package:flutter_app/models/location_fact.dart';

class LocationRepository {

 static List<Location> locations = [
      Location(
        id: 1,
        name: 'Ponta negra',
        imagePath: 'assets/images/morro.jpg',
        facts: [
          LocationFact('Summary',
              'O Morro do Careca é uma duna de aproximadamente 107 metros localizada no extremo sul da Praia de Ponta Negra, em Natal, Rio Grande do Norte.'),
          LocationFact('About',
              'É um dos principais símbolos turísticos da cidade. No passado era uma fonte de diversão. Desde o final da década de 90 o Morro do Careca está fechado a visitação.')
        ],
      ),
      Location(
        id: 2,
        name: 'Pipa',
        imagePath: 'assets/images/pipa_sunset.jpg',
        facts: [
          LocationFact('Summary',
              'A Praia de (da) Pipa é uma famosa praia localizada no município de Tibau do Sul, ficando a 85 km de Natal, capital do estado do Rio Grande do Norte, Brasil.[1] É o principal balneário do Litoral Sul do estado, que inclui ainda praias como Ponta do Madeiro e Praia do Amor. '),
          LocationFact('About',
              'A “Praia de Pipa” é na verdade formada por um conjunto de 11 praias que constituem o balneário conhecido como Praia da Pipa: praia de Tibau do Sul, onde desagua a Lagoa Guaraíras, Sibaúma, Malembá, Praia do Giz, Cacimbinhas, Praia do Madeiro, Baia do Golfinhos, Praia do Centro, Praia do Amor, Praia de Minas e Cancela.')
        ],
      ),
      Location(
        id: 3,
        name: 'Praia do forte',
        imagePath: 'assets/images/forte.jpg',
        facts: [
          LocationFact('Summary',
              'A Praia do Forte é uma praia brasileira localizada no bairro de Santos Reis, em Natal, no estado do Rio Grande do Norte. Protegida por arrecifes que formam piscinas naturais, é nesta praia que se localiza o Forte dos Reis Magos, um dos cartões postais da cidade. '),
          LocationFact('About',
              'A Praia do Forte é um dos sete pontos da "Area Especial de Interesse Turístico" do litoral, por isso, a praia é vigiada 24 horas por dia por algumas das 23 câmeras instaladas ao longo do litoral de Natal.')
        ],
      ),
      Location(
        id: 4,
        name: 'Genipabu',
        imagePath: 'assets/images/genipabu.jpg',
        facts: [
          LocationFact('Summary',
              'O Parque Turístico Ecológico Dunas de Genipabu engloba uma praia, um grande complexo de dunas, uma lagoa e uma área de proteção ambiental localizados no município de Extremoz, no estado do Rio Grande do Norte, no Brasil.'),
          LocationFact('About',
              'Localiza-se a vinte quilômetros do Centro da capital do estado, Natal. É um dos mais famosos cartões-postais do estado.')
        ],
      ),
      Location(
        id: 5,
        name: 'Pirangi',
        imagePath: 'assets/images/pirangi.jpg',
        facts: [
          LocationFact('Summary',
              'Praia de Pirangi ou Pirangi é uma praia no litoral do Rio Grande do Norte, dividida pelo Pirangi em Pirangi do Norte e Pirangi do Sul. A praia "do norte" está localizada no município de Parnamirim, e a "do sul" no município de Nísia Floresta.'),
          LocationFact('Pirangi do Norte',
              'Pirangi do Norte é a mais procurada pelos natalenses no verão especialmente em sua maioria pela grande massa de adolescentes e jovens de classe média alta que ali passam o chamado veraneio. É a que tem mais infra-estrutura em relação a Pirangi do Sul e é a mais badalada já que nela se encontram bares e a casa de shows mais famosa no estado, o Vila Folia/Circo da Folia onde grandes bandas de axé, forró e rock se apresentam. É nesta praia que se localiza o maior cajueiro do mundo, por isso, recebe uma grande gama de turistas.'),
          LocationFact('Pirangi do Sul',
              'Pirangi do Sul também é conhecida como Pirambúzios (por ser vizinha a Praia de Búzios) e é o oposto de Pirangi do Norte, sendo uma praia calma, com ondas fracas, cercada por recifes e menos urbanizada. Na maré baixa, os bancos de corais formam ilhas e piscinas naturais a um quilômetro mar a dentro (os Parrachos de Pirangi), proporcionando um espetáculo maravilhoso da natureza, que é visitado por lanchas particulares e barcos da empresa Marina Badauê, que organiza passeios diários com os turistas. A praia é muito procurada para a prática de esportes náuticos e pesca.'),
        ],
      ),
 ];
}