A Simple Weather App which shows the basic information about weather.
=> It is simple app with 2 screen (Help Screen and Homepage Screen).
=> On first launch, app should show help screen as splash screen ( which has heading
text/image with skip button; 
=> In homepage app should weather (See below) :
![helpscreen](https://github.com/UkeshThapaliya/WeatherApp/assets/103941519/3daba511-64cb-473d-9366-0c7ccc4f122b)
![Biratnagar Temp](https://github.com/UkeshThapaliya/WeatherApp/assets/103941519/e89b56ad-3729-4627-83eb-b44e3dd07ae0)
![Defalult location](https://github.com/UkeshThapaliya/WeatherApp/assets/103941519/deea925a-b9b1-44ca-9dd0-abca80e07214)
![Pokhara Temp](https://github.com/UkeshThapaliya/WeatherApp/assets/103941519/5695223f-963d-41ce-808e-78d16402f7bc)
![Mustang Temp](https://github.com/UkeshThapaliya/WeatherApp/assets/103941519/e0ec8151-4cb8-43a7-9d22-9bc58fcc741c)
In HomeScreen Page
=> It contain textbox to enter location name (initially blank) and Save/Update button.
If location name is blank, app will call weather api automatically with current latitude
and longitude of app.
Else app will call weather api with location name is entered and Save button is pressed.
=> If location name is entered it remembered on next launch
=> When location name textbox is empty, label of button is Save; if value exist label
changed to Update.
=> It show the temperature received from API.
=> In top bar there is button to open Help Screen.  It is the flutter predefined icon for the help.
