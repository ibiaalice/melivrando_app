import 'package:melivrando/domain/entities/book/book.dart';

class User {
  static const String PROFILE_URL =
      'https://images.tcdn.com.br/img/img_prod/604201/lisa_simpsons_1112_1_20180325122736.png';
  static const String NAME = 'Lisa Simpson';

  static const String EMAIL = 'lisasimpson@gmail.com';

  static const String AGE = '8';

  static const String BIO = 'Inteligente, a definição perfeita para Lisa.';

  static final List<Book> BOOKS = <Book>[
    Book(
      'Crepusculo',
      'https://images-na.ssl-images-amazon.com/images/I/41K99+cInvL._SX326_BO1,204,203,200_.jpg',
      'LENDO',
    ),
    Book(
      'Harry Potter e a Pedra Filosofal',
      'https://images-na.ssl-images-amazon.com/images/I/416vIJ9jCOL._SX346_BO1,204,203,200_.jpg',
      'LIDO',
    ),
    Book(
      'Harry Potter e a Camara Secreta',
      'https://images-na.ssl-images-amazon.com/images/I/51SnGLrrJcL._SX346_BO1,204,203,200_.jpg',
      'LIDO',
    ),
    Book(
      'Harry Potter e o Prisioneiro de Azkaban',
      'https://images-na.ssl-images-amazon.com/images/I/41kT95iZ81L._SX346_BO1,204,203,200_.jpg',
      'LIDO',
    ),
    Book(
      'Harry Potter e o cálice de fogo',
      'https://images-na.ssl-images-amazon.com/images/I/51DDABrpU5L._SX346_BO1,204,203,200_.jpg',
      'LIDO',
    ),
    Book(
      'Harry Potter e a ordem da fênix',
      'https://images-na.ssl-images-amazon.com/images/I/41SknlxiqHL._SX346_BO1,204,203,200_.jpg',
      'LIDO',
    ),
    Book(
      'Harry Potter e o enigma do principe',
      'https://images-na.ssl-images-amazon.com/images/I/51msVf94L2L._SX346_BO1,204,203,200_.jpg',
      'LIDO',
    ),
    Book(
      'Harry Potter e as relíquias da morte',
      'https://images-na.ssl-images-amazon.com/images/I/51PoQ61oq-L._SX346_BO1,204,203,200_.jpg',
      'LIDO',
    ),
  ];

  String getProfileUrl() {
    return PROFILE_URL;
  }

  String getName() {
    return NAME;
  }

  String getEmail() {
    return EMAIL;
  }

  String getAge() {
    return AGE;
  }

  String getBio() {
    return BIO;
  }

  List<Book> getBooks() {
    return BOOKS;
  }
}
