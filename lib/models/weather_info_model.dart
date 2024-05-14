class WeatherInfo {
  final double tempC;
  final String text;
  final String icon;

  WeatherInfo({required this.tempC, required this.text, required this.icon});

  factory WeatherInfo.fromJson(Map<String, dynamic> json) {
    return WeatherInfo(
      tempC: json['current']['temp_c'].toDouble(),
      text: json['current']['condition']['text'],
      icon: json['current']['condition']['icon'],
    );
  }
}
