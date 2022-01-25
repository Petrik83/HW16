//
//  ContentView.swift
//  HW16
//
//  Created by Aliaksandr Piatrovich on 25.01.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MediatecaView()
                .tabItem {
                    Image("music_albums_fill 2")
                        .renderingMode(.template)
                    Text("Медиатека")
                        .foregroundColor(.gray)
                }
            Text("Second")
                        .tabItem {
                            Image(systemName: "dot.radiowaves.left.and.right")
                            Text("Радио")
                        }
            Text("Second")
                        .tabItem {
                            Image(systemName: "magnifyingglass")
                            Text("Поиск")
                        }
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

