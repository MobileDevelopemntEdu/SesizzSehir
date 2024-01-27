/// `UserModel` sistemdeki bir kullanıcıyı temsil eden bir sınıftır.
/// Kullanıcının benzersiz tanımlayıcısı (uid), adı, üniversite adı (uniName), e-postası, telefon numarası ve adresi için alanlar içerir.
/// Yeni bir kullanıcı oluşturmak için bir yapılandırıcı ve bir kullanıcıyı bir JSON nesnesine ve bir JSON nesnesinden dönüştürmek için yöntemler sağlar.
class UserModel {
  // Kullanıcının benzersiz tanımlayıcısı.
  String? uid;
  // Kullanıcının adı.
  String? name;
  // Kullanıcının ilişkili olduğu üniversitenin adı.
  String? uniName;
  // Kullanıcının e-posta adresi.
  String? email;
  // Kullanıcının telefon numarası.
  String? phone;
  // Kullanıcının adresi.
  String? address;

  /// Yeni bir kullanıcı oluşturmak için yapılandırıcı.
  /// Tüm alanlar `phone`, `uniName` ve `address` dışında gereklidir.
  UserModel({required this.uid, required this.name, required this.email, this.phone, this.uniName, this.address});

  /// Yeni bir kullanıcıyı bir JSON nesnesinden oluşturmak için yöntem.
  /// Bir Map<String, dynamic> bekler ve değerleri kullanıcı nesnesindeki ilgili alanlara atar.
  /// Bir alan JSON nesnesinde mevcut değilse, alana boş bir dize atar.
  UserModel.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    name = json['name'];
    email = json['email'] ;
    phone = json['phone'] ?? '';
    address = json['address'] ?? '';
    uniName = json['uniName'] ?? '';
  }

  /// Bir kullanıcıyı bir JSON nesnesine dönüştürmek için yöntem.
  /// Kullanıcının alanlarını anahtar-değer çiftleri olarak içeren bir Map<String, dynamic> döndürür.
  /// Bir alan null ise, JSON nesnesindeki alana boş bir dize atar.
  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'name': name,
      'email': email ?? '' ,
      'phone': phone?? '',
      'address': address ?? '',
      'uniName': uniName ?? '',
    };
  }
}

/// JSON (JavaScript Object Notation), veri depolama ve veri alışverişi için kullanılan hafif bir veri biçimidir.
/// JSON, verileri anahtar-değer çiftleri olarak saklar. Bu, verilerin okunması ve yazılması için oldukça kullanışlıdır.
/// Dart dilinde, JSON verileri 'Map<String, dynamic>' türünde bir nesneye dönüştürülür.

/// `fromJson` ve `toJson` fonksiyonları, JSON verilerini Dart nesnelerine ve Dart nesnelerini JSON verilerine dönüştürmek için kullanılır.
/// Bu, verilerin uygulama içinde daha kolay işlenmesini sağlar ve verilerin bir API üzerinden alınması ve gönderilmesini kolaylaştırır.

/// `fromJson` fonksiyonu, bir JSON nesnesini alır ve bu verileri kullanarak bir Dart nesnesi oluşturur.
/// Bu, bir API'den gelen JSON verilerini Dart nesnelerine dönüştürmek için kullanılır.

/// `toJson` fonksiyonu, bir Dart nesnesini alır ve bu nesneyi bir JSON nesnesine dönüştürür.
/// Bu, bir API'ye göndermek üzere Dart nesnelerini JSON verilere dönüştürmek için kullanılır.