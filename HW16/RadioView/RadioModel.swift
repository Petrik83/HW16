//
//  RadioModel.swift
//  HW16
//
//  Created by Александр Петрович on 28.01.2022.
//

import Foundation

struct RadioItem {
    
    let image: String
    let title: String
    let subTitle: String?
    let id = UUID()
}

extension RadioItem: Hashable, Identifiable {
    static func getHorizontalData() -> [RadioItem] {
        return [
            RadioItem(image: "Хип-хоп на русском", title: "Хип-хоп на русском", subTitle: nil),
            RadioItem(image: "Хиты на русском", title: "Хиты на русском", subTitle: nil),
            RadioItem(image: "Чилаут", title: "Чилаут", subTitle: nil),
            RadioItem(image: "Хип-хоп", title: "Хип-хоп", subTitle: nil),
            RadioItem(image: "Поп-музыка", title: "Поп-музыка", subTitle: nil),
            RadioItem(image: "Танцевальная музыка", title: "Танцевальная музыка", subTitle: nil),
            RadioItem(image: "Хиты", title: "Хиты", subTitle: nil)
        ]}
    static var horizontalRadioItem = RadioItem.getHorizontalData()
}
