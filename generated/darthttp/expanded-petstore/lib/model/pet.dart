part of expanded_petstore_darthttp_sdk.api;

class Pet {
  
  String name;
  
  String tag;
  
  int id;

  Pet({
    @required this.name,
    this.tag,
    @required this.id,
  });

  @override
  String toString() {
    return 'Pet[name=$name, tag=$tag, id=$id, ]';
  }

  Pet.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    tag = json['tag'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (tag != null)
      json['tag'] = tag;
    if (id != null)
      json['id'] = id;
    return json;
  }

  static List<Pet> listFromJson(List<dynamic> json) {
    return json == null ? List<Pet>() : json.map((value) => Pet.fromJson(value)).toList();
  }

  static Map<String, Pet> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, Pet>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Pet.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Pet-objects as value to a dart map
  static Map<String, List<Pet>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<Pet>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = Pet.listFromJson(value);
      });
    }
    return map;
  }
}

