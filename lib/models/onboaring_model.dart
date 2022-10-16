class OnbordingScreen {
  String image;
  String title;
  String discription;

  OnbordingScreen(
      {required this.image, required this.title, required this.discription});
}

List<OnbordingScreen> jsonData = [
  OnbordingScreen(
      title: 'Welcome',
      image: "assets/files/welcome.json",
      discription:
          "Find Corporate Travel Management Uk! Always Facts. Completely Secure. Results & Answers. Unlimited Access. The Best Resource."),
  OnbordingScreen(
      title: 'help-Support',
      image: 'assets/files/help.json',
      discription:
          "Obokash Travel is the best visa processing agency in Bangladesh for multiple purposes like touring and traveling, business .."),
  OnbordingScreen(
      title: 'Travels',
      image: 'assets/files/travel.json',
      discription:
          "Travel Agencies (Air Ticketing & others) · S S International Travels & Tours · Rafiya Travels Agency ..."),
];
