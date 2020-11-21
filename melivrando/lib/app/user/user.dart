class User {
  static const String PROFILE_URL =
      'https://images.tcdn.com.br/img/img_prod/604201/lisa_simpsons_1112_1_20180325122736.png';
  static const String NAME = 'Lisa Simpson';

  static const String EMAIL = 'lisasimpson@gmail.com';

  static const String AGE = '8';

  static const String BIO = 'Inteligente, a definição perfeita para Lisa.';

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
}
