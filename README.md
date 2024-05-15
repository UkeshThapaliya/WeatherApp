A Simple Weather App which shows the basic information about weather.

=> It is simple app with 2 screen (Help Screen and Homepage Screen).

=> On first launch, app should show help screen as splash screen ( which has headingtext/image with skip button; ) See Below :

 First Screen is splash screen which is helpscreen.
 Second Screen is deafault homepage screen idf there is not any location provided it will auto import the weather data with current lat lon. 

<img src = "https://github.com/UkeshThapaliya/WeatherApp/assets/103941519/9d6051cf-5a7a-4a8d-bc46-e5886f49d88d" width= "200"/>
<img src = "https://github.com/UkeshThapaliya/WeatherApp/assets/103941519/bd0e2e8a-ad8e-46fc-a3bd-454d31c4b67a" width= "200"/>
<img src = "https://github.com/UkeshThapaliya/WeatherApp/assets/103941519/4799bb60-7fc3-4647-b5fa-db3bef7b6feb" width= "200"/>
<img src = "https://github.com/UkeshThapaliya/WeatherApp/assets/103941519/78dac7a6-e5de-4d62-af2a-cc8f868ffa4e" width= "200"/>
<img src = "https://github.com/UkeshThapaliya/WeatherApp/assets/103941519/dc5e9187-0e05-4952-a735-a3ae0b9f55cf" width= "200"/>

In HomeScreen Page

=> It contain textbox to enter location name (initially blank) and Save/Update button.
If location name is blank, app will call weather api automatically with current latitude and longitude of app.
Else app will call weather api with location name is entered and Save button is pressed.

=> If location name is entered it remembered on next launch

=> When location name textbox is empty, label of button is Save; if value exist label changed to Update.

=> It show the temperature received from API.

=> In top bar there is button to open Help Screen.  It is the flutter predefined icon for the help.
