//
//  PlayerView.swift
//  HW16
//
//  Created by Aliaksandr Piatrovich on 26.01.22.
//

import SwiftUI

struct PlayerView: View {
    @EnvironmentObject var searchText: SearchText
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: PlayerViewMetric.rectangleHeight)
                .foregroundColor(Color.init(UIColor.systemBackground))
                .opacity(0.95)                
            HStack {
                Image(searchText.searchResult.image)
                        .resizable()
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 20.0)
                        .frame(width: 100, height: 100)
                Text(searchText.searchResult.title)
                    Spacer()
                    Button {
                        print("play")
                    } label: {
                        Image(systemName: "play.fill")
                            .foregroundColor(.primary)
                    }
                    .padding(.trailing, 6.0)
                    Button {
                        print("forward")
                    } label: {
                        Image(systemName: "forward.fill")
                            .foregroundColor(.primary)
                    }
                    .padding(.trailing)
                }
            .frame(height: 70)
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
