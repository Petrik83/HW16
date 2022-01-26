//
//  ContentView.swift
//  HW16
//
//  Created by Aliaksandr Piatrovich on 25.01.22.
//

import SwiftUI

struct ContentView: View {
    init (){
        UITabBar.appearance().backgroundColor = .systemBackground
    }
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView {
                MediatecaView()
                    .tabItem {
                        Image("music_albums_fill 2")
                            .renderingMode(.template)
                        Text("Медиатека")
                    }
                Text("Second")
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }
                Text("Third")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            PlayerView()
                .padding(.bottom, 49.0)
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

