//
//  ContentView.swift
//  WeatherAPP
//
//  Created by Geetansh Rajesh on 22/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            VStack {
                WeatherSummaryView()
                    .padding(.top,60)
                    .padding(.bottom,40)
                HourlyForcastView
                DailyForecastView()
            }
        }
        .background(.blue)
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

