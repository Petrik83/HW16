//
//  Model.swift
//  HW16
//
//  Created by Aliaksandr Piatrovich on 26.01.22.
//

import Foundation

struct Item {
    
    let icon: String
    let title: String
    let id = UUID()
}

extension Item: Hashable, Identifiable {
    static func getData() -> [Item] {
        return [
            Item(icon: "play", title: "play"),
            Item(icon: "pause", title: "pause1"),
            Item(icon: "pause", title: "pause2"),
            Item(icon: "pause", title: "pause3"),
            Item(icon: "pause", title: "pause4"),
            Item(icon: "pause", title: "pause5")
        ]}
    static var list = Item.getData()
    }
