//
//  RangedProgressView.swift
//  WeatherAPP
//
//  Created by Geetansh Rajesh on 24/10/23.
//

import SwiftUI

struct RangedProgressView:ProgressViewStyle{
    let range : ClosedRange<Double>
    
    func makeBody(configuration: Configuration) -> some View {
        return GeometryReader{ proxy in
            ZStack(alignment:.leading) {
                Capsule()
                    .fill(.green)
                Capsule()
                    .fill(.blue)
                    .frame(width: proxy.size.width * fillWidth )
            }
            }
        }
        var fillWidth:Double{
            let normalizedRange = range.upperBound-range.lowerBound
            return Double(normalizedRange)
        }
    }
    
struct RangedProgressView_previews: PreviewProvider {
    static var previews: some View {
        ScrollView{
            VStack{
                ForEach(0...10, id: \.self){ value in
                    ProgressView(value:0.5)
                        .frame(height: 10)
                        .progressViewStyle(RangedProgressView(range: 0.0...(Double(value)/10.0)))
                        .padding()
                    
                }
                ForEach(0...10, id: \.self){ value in
                    ProgressView(value:0.5)
                        .frame(height: 10)
                        .progressViewStyle(RangedProgressView(range: (Double(value)/10.0)...1.0))
                        .padding()
                }
            }
        }
        
    }
    
}
