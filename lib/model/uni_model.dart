class Uni_Model {
  String? alphaTwoCode;
  String? name;
  List<String>? webPages;
  Null? stateProvince;
  List<String>? domains;
  String? country;

  Uni_Model(
      {this.alphaTwoCode,
      this.name,
      this.webPages,
      this.stateProvince,
      this.domains,
      this.country});

  Uni_Model.fromJson(Map<String, dynamic> json) {
    alphaTwoCode = json['alpha_two_code'];
    name = json['name'];
    webPages = json['web_pages'].cast<String>();
    stateProvince = json['state-province'];
    domains = json['domains'].cast<String>();
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['alpha_two_code'] = this.alphaTwoCode;
    data['name'] = this.name;
    data['web_pages'] = this.webPages;
    data['state-province'] = this.stateProvince;
    data['domains'] = this.domains;
    data['country'] = this.country;
    return data;
  }
}
