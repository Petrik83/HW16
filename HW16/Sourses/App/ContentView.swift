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
class SearchText: ObservableObject {
    @Published var searchText = ""
}

struct ContentView: View {
    @StateObject var picker = PickerChoise()
    @StateObject var searchText = SearchText()

    @State var selection = Set<UUID>()
    @State var shouldEditViewAppiar = false
    @State var showCancelButton: Bool = false
    @State var queryString = ""
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView {
                NavigationView{
                    screenSelection(editViewAppiar: shouldEditViewAppiar)
                        .navigationTitle("Медиатека")
                        .navigationBarItems(trailing:
                                                Button(
                                                    action: {
                                                        shouldEditViewAppiar.toggle()
                                                    },
                                                    label: {
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
                        .environmentObject(searchText)
                        .navigationTitle("Поиск")
                }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Поиск")
                }
            }
            if !showCancelButton {
                PlayerView()
                    .padding(.bottom, 49.0)
            }
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

