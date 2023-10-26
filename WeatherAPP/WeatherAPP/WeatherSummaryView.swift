//
//  WeatherSummaryView.swift
//  WeatherAPP
//
//  Created by Geetansh Rajesh on 23/10/23.
//

import SwiftUI

struct WeatherSummaryView: View {
    var body: some View {
        VStack{
            Text("Chennai")
                .foregroundColor(.white)
                .foregroundColor(.white)
                .font(Font.custom("SanFrancisco", size: 32))
                .fontWeight(.thin)
                .shadow(radius: 2.0)
            Text(" 32°")
                .foregroundColor(.white)
                .font(Font.custom("SanFrancisco", size: 100))
                .fontWeight(.thin)
                .shadow(radius: 2.0)
            Text("Mostly Sunny")
                .foregroundColor(.white)
                .font(Font.custom("SanFrancisco", size: 21))
                .fontWeight(.medium)
                .shadow(radius: 2.0)
            Text("H:33° L:26°")
                .foregroundColor(.white)
                .font(Font.custom("SanFrancisco", size: 21))
                .fontWeight(.medium)
                .shadow(radius: 2.0)
        }
    }
}

struct WeatherSummaryView_Preview: PreviewProvider {
    static var previews: some View {
        ScrollView{
            HStack{
                Spacer()
                WeatherSummaryView()
                Spacer()
            }
            .padding(.top, 30)
           
            
        }
        .background(.blue)
    }
}
