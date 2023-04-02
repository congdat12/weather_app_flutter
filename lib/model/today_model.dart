class TodayModel{
  String? icon;
  String? temp;
  String? time;
  TodayModel();
}
List<TodayModel> todayModel = [
  TodayModel()..icon = 'assets/icons/Group 2.png'
  ..temp = '24°C'
  ..time = 'Now',
  TodayModel()..icon = 'assets/icons/Group 2.png'
  ..temp = '25°C'
  ..time = '1:00PM',
  TodayModel()..icon = 'assets/icons/Icon weather.png'
  ..temp = '23°C'
  ..time = '2:00PM',
  TodayModel()..icon = 'assets/icons/Icon weather (1).png'
  ..temp = '20°C'
  ..time = '3:00PM',
  
];