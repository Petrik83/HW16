//
//  ContentView.swift
//  HW16
//
//  Created by Aliaksandr Piatrovich on 25.01.22.
//

import SwiftUI

struct ContentView: View {
    @State var selection = Set<UUID>()
    @State var shouldEditViewAppiar = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView {
                NavigationView{
                    screenSelection(editViewAppiar: shouldEditViewAppiar)
                        .navigationTitle("Медиатека")
                        .navigationBarItems(trailing:
                                                Button(action: {
                                                    shouldEditViewAppiar.toggle()
                                                    }, label: {
                                                    switch shouldEditViewAppiar {
                                                    case true:
                                                        Text("Готово")
                                                    case false:
                                                        Text("Править")
                                                    }
                                                    })
                                                .foregroundColor(.red))
                }
                .tabItem {
                    Image("music_albums_fill 2")
                        .renderingMode(.template)
                    Text("Медиатека")
                }
                
                NavigationView{
                    Text("Радио")
                        .navigationTitle("Радио")
                }
                .tabItem {
                    Image(systemName: "dot.radiowaves.left.and.right")
                    Text("Радио")
                }
                
                NavigationView{
                    Text("Поиск")
                        .navigationTitle("Поиск")
                }
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            
            PlayerView()
                .padding(.bottom, Metric.playerViewPadding)
        }
    }
    
    func screenSelection(editViewAppiar: Bool) -> AnyView {
        switch editViewAppiar {
        case true:
            return AnyView(ListView(count: $selection))
        case false:
            return AnyView(MediatecaView())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

enum Metric {
    static let playerViewPadding = 45.0
}
