//
//  HW16App.swift
//  HW16
//
//  Created by Aliaksandr Piatrovich on 25.01.22.
//

import SwiftUI

class PlayerPresenter: ObservableObject {
    @Published var showMaxPlayer = false
    @Published var showPlayerView: Bool = true
    @Published var isPlayButtonPressed = false
    @Published var timerSlider: Double = 0

}

class SearchText: ObservableObject {
    @Published var searchText = ""
    @Published var lastSearch = [SectionItem]()
    @Published var searchResult = SectionItem(image: "Не исполняется", title: "Не исполняется", subTitle: "", compositionDuration: 1)
}

@main
struct HW16App: App {
    @StateObject var playerPresenter = PlayerPresenter()
    @StateObject var searchText = SearchText()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(playerPresenter)
                .environmentObject(searchText)

        }
    }
}
