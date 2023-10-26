//
//  HourlyForecastView.swift
//  WeatherAPP
//
//  Created by Geetansh Rajesh on 23/10/23.
//

import SwiftUI

var HourlyForcastView:some View{
    VStack(alignment:.leading) {
       
            Text("Sunny conditions expected around 4pm.")
                .padding(.bottom,7)
                .foregroundStyle(.white)
                .font(Font.custom("System", size: 14))
                .fontWeight(.medium)
                .shadow(radius: 2.0)
                .padding(.trailing,18)
        
        Divider()
            .padding(.bottom,7)
        ScrollView(.horizontal) {
            HStack {
                ForEach(1..<23) { _ in
                    VStack {
                        Text("Now")
                            .foregroundStyle(.white)
                            .font(Font.custom("System", size: 14))
                            .fontWeight(.semibold)
                            .shadow(radius: 2.0)
                        Text("☀️")
                            .padding(.vertical,2)
                        Text(" 33°")
                            .foregroundStyle(.white)
                            .font(Font.custom("System", size: 20))
                            .fontWeight(.medium)
                            .shadow(radius: 2.0)
                    }
                    
                }.padding(.trailing,18)
            }
        }
        .scrollIndicators(.never)
        
    }
    .padding(14)
    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16))
}

struct HourlyForcastView_previews: PreviewProvider {
    static var previews: some View {
        ScrollView{
            HStack{
                Spacer()
                HourlyForcastView
                Spacer()
            }
            .padding(.top, 30)
        }
        .background(.blue)
    }
}
