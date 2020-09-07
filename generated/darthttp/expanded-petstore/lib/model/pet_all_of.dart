part of expanded_petstore_darthttp_sdk.api;

class PetAllOf {
  
  int id;

  PetAllOf({
    @required this.id,
  });

  @override
  String toString() {
    return 'PetAllOf[id=$id, ]';
  }

  PetAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    return json;
  }

  static List<PetAllOf> listFromJson(List<dynamic> json) {
    return json == null ? List<PetAllOf>() : json.map((value) => PetAllOf.fromJson(value)).toList();
  }

  static Map<String, PetAllOf> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, PetAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PetAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PetAllOf-objects as value to a dart map
  static Map<String, List<PetAllOf>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<PetAllOf>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = PetAllOf.listFromJson(value);
      });
    }
    return map;
  }
}

