//
//  RadioModel.swift
//  HW16
//
//  Created by Александр Петрович on 28.01.2022.
//

import Foundation

struct HorizontalRadioItem {
    
    let image: String
    let title: String
    let id = UUID()
}

extension HorizontalRadioItem: Hashable, Identifiable {
    static func getData() -> [HorizontalRadioItem] {
        return [
            HorizontalRadioItem(image: "Хип-хоп на русском", title: "Хип-хоп на русском"),
            HorizontalRadioItem(image: "Хиты на русском", title: "Хиты на русском"),
            HorizontalRadioItem(image: "Чилаут", title: "Чилаут"),
            HorizontalRadioItem(image: "Хип-хоп", title: "Хип-хоп"),
            HorizontalRadioItem(image: "Поп-музыка", title: "Поп-музыка"),
            HorizontalRadioItem(image: "Танцевальная музыка", title: "Танцевальная музыка"),
            HorizontalRadioItem(image: "Хиты", title: "Хиты")
        ]}
    static var horizontalRadioItem = HorizontalRadioItem.getData()
}
