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
                .frame(height: 90)
                .foregroundColor(Color.init(UIColor.systemBackground))
                .opacity(0.95)
                .blur(radius: 3.0)
                
            VStack {
                Divider()
                    .padding(0)
                HStack {
                        Image("mumiytroll")
                            .resizable()
                            .cornerRadius(8)
                            .shadow(radius: 8)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .frame(width: 100, height: 100)
                    
                        Text("Фантастика")
                        Spacer()
                        Button {
                            print("play")
                        } label: {
                            Image(systemName: "play.fill")
                                .foregroundColor(.black)
                        }
                        .padding(.trailing, 6.0)
                        Button {
                            print("play")
                        } label: {
                            Image(systemName: "forward.fill")
                                .foregroundColor(.black)
                        }
                        .padding(.trailing)
                    }
                .frame(height: 70)
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
