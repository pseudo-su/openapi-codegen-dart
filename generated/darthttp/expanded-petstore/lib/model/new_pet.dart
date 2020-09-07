part of expanded_petstore_darthttp_sdk.api;

class NewPet {
  
  String name;
  
  String tag;

  NewPet({
    @required this.name,
    this.tag,
  });

  @override
  String toString() {
    return 'NewPet[name=$name, tag=$tag, ]';
  }

  NewPet.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    tag = json['tag'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (tag != null)
      json['tag'] = tag;
    return json;
  }

  static List<NewPet> listFromJson(List<dynamic> json) {
    return json == null ? List<NewPet>() : json.map((value) => NewPet.fromJson(value)).toList();
  }

  static Map<String, NewPet> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, NewPet>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NewPet.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NewPet-objects as value to a dart map
  static Map<String, List<NewPet>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<NewPet>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = NewPet.listFromJson(value);
      });
    }
    return map;
  }
}

