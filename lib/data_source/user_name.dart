//clase
class UserName {
  final String title;
    final String first;
      final String last;
//contructor
      UserName.fromJson(Map<String, dynamic>json)
      :title = json['title'],
      first = json['first'],
      last = json['last'];

}