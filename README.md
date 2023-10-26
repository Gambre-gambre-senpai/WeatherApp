# WeatherApp
bro this one is not yet completed and i have written this code by my own i have not used chat gpt or copy paste from other websites i need more time to show my actual work but for now i guess its looks desent
this app is prototype of apple weather app itself 
im adding a explanation so u can read all the things 
Weather Summary View
This Swift code defines a SwiftUI view called `WeatherSummaryView` for displaying a weather summary, and it also provides a preview of this view. Let's break down the code step by step:

1. Import SwiftUI: The code starts by importing the SwiftUI framework, which is used for building user interfaces in a declarative manner.

2. `WeatherSummaryView` structure: This structure represents the weather summary view.

   - `VStack`: This is a vertical stack that contains multiple `Text` views displaying various weather-related information.

     - The first `Text` view displays the city name "Chennai" in white color, with a custom font, size, and thin font weight. It also has a shadow with a radius of 2.0.

     - The second `Text` view displays the temperature "32°" in white, with a custom font, large size, and thin font weight. It also has a shadow.

     - The third `Text` view displays "Mostly Sunny" in white, with a custom font, a medium font weight, and a shadow.

     - The fourth `Text` view displays the high and low temperature range "H:33° L:26°" in white, with a custom font, a medium font weight, and a shadow.

3. `WeatherSummaryView_Preview` structure: This structure is used to provide a preview of the `WeatherSummaryView` in Xcode's preview canvas.

   - Inside the `previews` property, there is a `ScrollView` containing a `HStack`.

   - The `HStack` is used to center the `WeatherSummaryView` within the screen by adding `Spacer` views on both sides.

   - A top padding of 30 points is applied to the `HStack`.

4. `.background(.blue)`: The entire `ScrollView` has a blue background.

In summary, the code defines a `WeatherSummaryView` that displays weather-related information in a vertically stacked layout, with each piece of information (city name, temperature, 
weather condition, and temperature range) styled using a custom font, size, and font weight, and each text view has a shadow. The view is centered on a blue background in the provided preview.
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
This Swift code defines a SwiftUI view called `HourlyForecastView` for displaying an hourly weather forecast and provides a preview of this view. Let's break down the code step by step:

1. Import SwiftUI: The code starts by importing the SwiftUI framework, which is used for building user interfaces in a declarative manner.

2. `HourlyForcastView`: This is not declared as a structure but as a variable. It should be declared as a computed property inside a structure conforming to `View`. You may need to change it to:

   ```swift
   struct HourlyForecastView: View {
       var body: some View {
           // ... content of the view
       }
   }
   ```

   With this change, it correctly defines the `HourlyForecastView` structure.

   The `HourlyForecastView` contains the following components:

   - `VStack`: This is a vertical stack with an alignment set to `.leading`. It's used to stack various elements vertically.

     - `Text`: This text view displays the message "Sunny conditions expected around 4pm." in white. It's given padding at the bottom,
     -  custom font, font size, medium font weight, and a shadow. It's also padded on the trailing edge.

     - `Divider`: A horizontal line (divider) that separates sections of the view. It's given some padding at the bottom.

     - `ScrollView`: A horizontal scroll view that allows you to scroll through the hourly weather forecast.

       - Inside the `ScrollView`, there's an `HStack` (horizontal stack) containing a series of forecast elements.

         - `ForEach`: A loop that generates forecast elements. In this case, it creates 22 forecast elements.

           - Each forecast element is a `VStack` containing the following elements:

             - `Text`: Displays "Now" in white with a custom font, font size, semibold font weight, and a shadow.

             - `Text`: Displays a sun emoji (☀️).

             - `Text`: Displays the temperature (e.g., "33°") in white with a custom font, font size, medium font weight, and a shadow.

3. `.scrollIndicators(.never)`: This line disables scroll indicators for the horizontal scroll view.

4. `.padding(14)`: Adds padding around the entire content of the `HourlyForecastView`.

5. `.background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16))`: Sets the background of the view to an ultra-thin material appearance with rounded corners.

6. `HourlyForcastView_previews`: This structure is used to provide a preview of the `HourlyForecastView` in Xcode's preview canvas.

   - Inside the `previews` property, there is a `ScrollView` containing a `HStack`.

   - The `HStack` is used to center the `HourlyForecastView` within the screen by adding `Spacer` views on both sides.

   - A top padding of 30 points is applied to the `HStack`.

7. `.background(.blue)`: The entire `ScrollView` has a blue background.

In summary, the code defines a `HourlyForecastView` for displaying an hourly weather forecast with text and emoji icons, and it's embedded in
a preview structure for testing.
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
This Swift code defines a SwiftUI view called `DailyForecastView` for displaying a 10-day weather forecast and provides a preview of this view. Let's break down the code step by step:

1. Import SwiftUI: The code starts by importing the SwiftUI framework, which is used for building user interfaces in a declarative manner.

2. `DailyForecastView` structure: This structure represents the 10-day weather forecast view.

   - `VStack`: This is a vertical stack with an alignment set to `.leading`. It's used to stack various elements vertically.

     - `HStack`: A horizontal stack that contains an image and text for the heading.

       - `Image`: It displays a calendar icon using the system name "calendar" and sets its foreground style to white with reduced opacity.

       - `Text`: This text displays "10-DAY FORECAST" in uppercase. It sets a custom font size, medium font weight, and a white foreground style with reduced opacity.

     - `Divider`: A horizontal line (divider) that separates the heading from the forecast data.

     - `ForEach`: A loop that generates 9 forecast elements (for a 10-day forecast). Each element is a `HStack` containing the following:

       - `Text`: Displays "Today" in white with a custom font size, semibold font weight, and a foreground style.

       - `Spacer`: This is an empty space to create spacing between elements. 

       - `Image`: Displays a sun icon (system name: "sun.max.fill") with yellow color.

       - Another `Spacer` with a specified maximum width of 60 points.

       - `Text`: Displays the temperature (e.g., "23°") in white with reduced opacity.

       - `ProgressView`: Displays a progress bar with a value of 0.5 (half filled) and a maximum width of 100 points.

       - Another `Text`: Displays the high temperature (e.g., "34°") in white.

     - `Divider`: A horizontal line (divider) that separates each day's forecast.

3. `.padding(10)`: Adds padding around the entire content of the `DailyForecastView`.

4. `.background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16))`: Sets the background of the view to an ultra-thin material appearance with rounded corners.

5. `DailyForecastView_previews`: This structure is used to provide a preview of the `DailyForecastView` in Xcode's preview canvas.

   - Inside the `previews` property, there is a `ScrollView` containing the `DailyForecastView`.

   - A horizontal padding is applied to the `ScrollView`.

6. `.background(.blue)`: The entire `ScrollView` has a blue background.

In summary, the code defines a `DailyForecastView` for displaying a 10-day weather forecast. It includes the date, weather icon, temperature, and a progress bar for each day's forecast.
The view is styled with custom fonts and colors and is embedded in a preview structure for testing.
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
This Swift code defines the main view of a SwiftUI app called `ContentView`. Let's break down the code step by step:

1. Import SwiftUI: The code starts by importing the SwiftUI framework, which is used for building user interfaces in a declarative manner.

2. `ContentView` structure: This structure is the main view of the WeatherAPP.

   - `ScrollView`: It creates a scrollable container for the content to allow scrolling.

     - `VStack`: A vertical stack that contains various elements within the scroll view.

       - `WeatherSummaryView()`: An instance of the custom view `WeatherSummaryView`. This view represents a summary of weather-related information. It's given a top and bottom padding to adjust its position within the `VStack`.

       - `HourlyForecastView`: An instance of the custom view `HourlyForecastView`, which displays an hourly weather forecast.

       - `DailyForecastView()`: An instance of the custom view `DailyForecastView`, which displays a 10-day weather forecast.

3. `.background(.blue)`: The entire `ScrollView` has a blue background.

4. `ContentView_Previews` structure: This structure is used to provide a preview of the `ContentView` in Xcode's preview canvas.

   - Inside the `previews` property, there is a preview of the `ContentView`.

In summary, this code defines the main content view of the WeatherAPP, which includes weather summary information, an hourly weather forecast, 
and a 10-day weather forecast. These elements are organized in a scrollable layout using a `ScrollView`, and the background of the entire content view is set to a blue color.
A preview structure is also provided to visualize the `ContentView` in Xcode's preview canvas.
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
AND I WAS WORKING ON THIS FOR NOW AND ITS TAKING SO MUCH TIME TBH
This Swift code defines a custom `ProgressViewStyle` in SwiftUI called `RangedProgressView`. This style is used to create a custom progress bar with two different-colored capsules that fill from left to right to represent a specific range. Let's break down the code step by step:

1. Import SwiftUI: The code begins with importing the SwiftUI framework, which is used for building user interfaces in a declarative manner.

2. Define the `RangedProgressView` structure: This structure conforms to the `ProgressViewStyle` protocol. It is used to create a custom progress view style that displays progress within a specified range.

    - `range`: This is a property that holds a closed range of `Double` values, representing the allowed range for the progress bar.

    - `makeBody(configuration:)`: This method is required by the `ProgressViewStyle` protocol and is used to create the body of the progress view. Inside this method, a `GeometryReader` is used to determine the size of the progress view,
    -  and a `ZStack` is used to stack two capsule shapes.

        - The first capsule is filled with green color.
        - The second capsule is filled with blue color, and its width is determined by the `fillWidth` property.

    - `fillWidth`: This computed property calculates the fill width of the blue capsule based on the given range. It computes the difference between the upper and lower bounds of the range and returns it as a `Double`.

3. `RangedProgressView_previews` structure: This structure is used to provide a preview of the `RangedProgressView` in Xcode's preview canvas.

    - Inside the `previews` property, there is a `ScrollView` containing two sets of progress views.
    
    - The first set consists of progress views with a range from 0.0 to values ranging from 0.0 to 1.0 in increments of 0.1. These progress views have a green-to-blue fill.
    
    - The second set consists of progress views with a range from values ranging from 0.0 to 1.0 in increments of 0.1 to 1.0. These progress views have a blue-to-green fill.

    - Each progress view is wrapped in a `ProgressView` with a specified value (0.5), has a height of 10, and uses the `RangedProgressView` style with a custom range, creating a range-specific progress bar.

In summary, this code defines a custom `ProgressViewStyle` that creates progress bars with a specified range, where the progress is represented by two capsules of different colors filling from left to right.
The code also provides a preview of these custom progress views with different range values.
