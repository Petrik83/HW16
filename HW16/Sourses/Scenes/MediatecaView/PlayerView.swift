//
//  PlayerView.swift
//  HW16
//
//  Created by Aliaksandr Piatrovich on 26.01.22.
//

import SwiftUI

struct PlayerView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: PlayerViewMetric.rectangleHeight)
                .foregroundColor(Color.init(UIColor.systemBackground))
                .opacity(PlayerViewMetric.rectangleOpacity)
                .blur(radius: PlayerViewMetric.rectangleBlur)
                
            VStack {
                Divider()
                
                HStack {
                        Image("mumiytroll")
                            .resizable()
                            .cornerRadius(PlayerViewMetric.cornerRadius)
                            .shadow(radius: PlayerViewMetric.shadowRadius)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .frame(width: PlayerViewMetric.imageWidth, height: PlayerViewMetric.imageHeight)
                    
                        Text("Фантастика")
                        Spacer()
                        Button {
                            print("play")
                        } label: {
                            Image(systemName: "play.fill")
                                .foregroundColor(.black)
                        }
                        .padding(.trailing, PlayerViewMetric.buttonPadding)
                        Button {
                            print("play")
                        } label: {
                            Image(systemName: "forward.fill")
                                .foregroundColor(.black)
                        }
                        .padding(.trailing)
                    }
                
                .frame(height: PlayerViewMetric.hStackHeight)
                Divider()
            }
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}

enum PlayerViewMetric {
    static let rectangleHeight = 90.0
    static let rectangleOpacity = 0.95
    static let rectangleBlur = 3.0
    
    static let imageWidth = 100.0
    static let imageHeight = 100.0
    static let cornerRadius = 8.0
    static let shadowRadius = 8.0
    
    static let buttonPadding = 6.0
    
    static let hStackHeight = 70.0
}
