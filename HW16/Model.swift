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
    var checkmark: Bool
}

extension Item: Hashable {
    static func getData() -> [Item] {
        return [
            Item(icon: "play", title: "play", checkmark: false),
            Item(icon: "pause", title: "pause1", checkmark: false),
            Item(icon: "pause", title: "pause2", checkmark: false),
            Item(icon: "pause", title: "pause3", checkmark: false),
            Item(icon: "pause", title: "pause4", checkmark: false),
            Item(icon: "pause", title: "pause5", checkmark: false)
        ]}
    }
