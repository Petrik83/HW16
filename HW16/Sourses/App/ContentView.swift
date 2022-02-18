//
//  ContentView.swift
//  HW16
//
//  Created by Aliaksandr Piatrovich on 25.01.22.
//

import SwiftUI

class PickerChoise: ObservableObject {
    @Published var pickerSelection = "Apple Music"
}

struct ContentView: View {
    @StateObject var picker = PickerChoise()
    
    @State var selection = Set<UUID>()
    @State var shouldEditViewAppiar = false
    @State var showCancelButton: Bool = false
    @State var queryString = ""
    
    @EnvironmentObject var playerPresenter: PlayerPresenter
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView {
                NavigationView {
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
                    RadioView()
                        .navigationTitle("Радио")
                }
                .tabItem {
                    Image(systemName: "dot.radiowaves.left.and.right")
                    Text("Радио")
                }
                
                NavigationView{
                    FindView(showCancelButton: $showCancelButton)
                        .environmentObject(picker)
                        .navigationTitle("Поиск")
                }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Поиск")
                }
            }
            
            if playerPresenter.showPlayerView {
                PlayerView()
                    .padding(.bottom, Metric.playerViewPadding)
            }
            FullScreenPlayer()
        }
    }
    
    func screenSelection(editViewAppiar: Bool) -> AnyView {
        switch editViewAppiar {
        case true:
            return AnyView(ListView(selection: $selection))
        case false:
            return AnyView(MediatecaView())
        }
    }
}


enum Metric {
    static let playerViewPadding = 45.0
}
