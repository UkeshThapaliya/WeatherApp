class Weather {
  final double tempC;
  final String text;
  final String icon;

  Weather({required this.tempC, required this.text, required this.icon});

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      tempC: json['current']['temp_c'].toDouble(),
      text: json['current']['condition']['text'],
      icon: json['current']['condition']['icon'],
    );
  }
}
