//
//  FindViewData.swift
//  HW16
//
//  Created by Александр Петрович on 04.02.2022.
//

import Foundation

struct FindViewItem {
    let image: String
    let title: String
    let categoryViewItem: CategoryViewItem
}

struct CategoryViewItem {
    let firstSectionItem: [FirstSectionItem]
    let secondSectionItem: [SectionItem]
    let therdSectionItem: [SectionItem]
}

struct FirstSectionItem {
    let image: String
    let name: String
    let title: String
    let subTitle: String
}

struct SectionItem: Hashable {
    let image: String
    let title: String
    let subTitle: String
}


extension FindViewItem {
    static func getFindViewData() -> [FindViewItem] {
        return [
            FindViewItem(
                image: "Хип-хоп на русском", title: "Хип-хоп",
                categoryViewItem: CategoryViewItem(firstSectionItem: [FirstSectionItem(image: "Классика", name: "ИЗБРАННЫЙ ПЛЕЙЛИСТ", title: "ASAMMUELL", subTitle: "Поп"),
                                                                      FirstSectionItem(image: "Хиты 80-х", name: "ТОЛЬКО В APPLE MUSIC", title: "Apple Music Home Session: Zivert", subTitle: "Zivert")],
                                                   secondSectionItem: [SectionItem(image: "Глубокий сон", title: "Поп-волна", subTitle: "Apple Music Поп на русском"),
                                                                       SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском"),
                                                                       SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском"),
                                                                       SectionItem(image: "Глубокий сон", title: "Поп-волна", subTitle: "Apple Music Поп на русском"),
                                                                       SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском"),
                                                                       SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском")],
                                                   therdSectionItem: [SectionItem(image: "Глубокий сон", title: "Поп-волна", subTitle: "Apple Music Поп на русском"),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском"),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском"),
                                                                      SectionItem(image: "Глубокий сон", title: "Пип-волна", subTitle: "Apple Music Поп на русском"),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском"),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском"),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском"),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском"),
                                                                      SectionItem(image: "Глубокий сон", title: "Поп-волна", subTitle: "Apple Music Поп на русском"),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском"),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском")])),
            FindViewItem(
                image: "Хип-хоп на русском", title: "Хип-хоп на русском", categoryViewItem:
                    CategoryViewItem(firstSectionItem:
                                        [FirstSectionItem(image: "Классика", name: "ИЗБРАННЫЙ ПЛЕЙЛИСТ", title: "ASAMMUELL", subTitle: "Поп"),
                                         FirstSectionItem(image: "Хиты 80-х", name: "ТОЛЬКО В APPLE MUSIC", title: "Apple Music Home Session: Zivert", subTitle: "Zivert")],
                                     secondSectionItem: [SectionItem(image: "Глубокий сон", title: "Поп-волна", subTitle: "Apple Music Поп на русском"),
                                                         SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском")], therdSectionItem: [SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском")])
                
            )]}
    
    static var findViewItem = FindViewItem.getFindViewData()
    
    static func toArray(incomingData: [FindViewItem]) -> [SectionItem] {
        var array = [SectionItem]()
        for i in 0..<incomingData.count {
            for j in 0..<incomingData[i].categoryViewItem.therdSectionItem.count {
                array.append(incomingData[i].categoryViewItem.therdSectionItem[j])
            }
        }
        return array
    }
}
