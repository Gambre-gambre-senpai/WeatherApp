//
//  DailyForecastView.swift
//  WeatherAPP
//
//  Created by Geetansh Rajesh on 23/10/23.
//

import SwiftUI

struct DailyForecastView: View {
    var body: some View {
        VStack(alignment:.leading){
            HStack{
                Image(systemName: "calendar")
                    .foregroundStyle(.white.opacity(0.6))
                Text("10-DAY FORECAST" .uppercased())
                    .font(Font.system(size: 12))
                    .fontWeight(.medium)
                    .foregroundStyle(.white.opacity(0.6))
            }
            Divider()
            ForEach(1..<10) { _ in
                HStack{
                    Text("Today")
                        .foregroundStyle(.white)
                        .font(Font.system(size: 16))
                        .fontWeight(.semibold)
                    Spacer()
                    Image(systemName:"sun.max.fill")
                        .foregroundColor(.yellow)
                        .padding(.leading)
                    Spacer()
                        .frame(maxWidth: 60)
                    
                    Text("23°")
                        .foregroundStyle(.white.opacity(0.6))
                    
                    ProgressView(value: 0.5)
                        .frame(maxWidth: 100)
                    
                    Text("34°")
                        .foregroundStyle(.white)
                }
                
                Divider()
                
                }
            }.padding(10)
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16))
                
        }
    }
    
    struct DailyForecastView_previews: PreviewProvider {
        static var previews: some View {
            ScrollView{
                
                
                DailyForecastView()
                
            }
                .padding(.horizontal)
                .background(.blue)
        }
    }

