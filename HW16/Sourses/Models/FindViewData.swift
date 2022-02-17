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
    let compositionDuration: Double
}


extension FindViewItem {
    static func getFindViewData() -> [FindViewItem] {
        return [
            FindViewItem(
                image: "Пространственное аудио", title: "Пространственное аудио",
                categoryViewItem: CategoryViewItem(firstSectionItem: [FirstSectionItem(image: "KOD", name: "ТЕПЕРЬ В ПРОСТРАНСТВЕННОМ АУДИО", title: "KOD", subTitle: "J. Cole"),
                                                                      FirstSectionItem(image: "4Your Eyez Only", name: "ТЕПЕРЬ В ПРОСТРАНСТВЕННОМ АУДИО", title: "4Your Eyez Only", subTitle: "J. Cole"),
                                                                      FirstSectionItem(image: "Revenge of the Dreamers II", name: "ТЕПЕРЬ В ПРОСТРАНСТВЕННОМ АУДИО", title: "Revenge of the Dreamers II", subTitle: "Dreamville & J. Cole")],
                                                   secondSectionItem: [SectionItem(image: "Сздано для пространственного аудио", title: "Сздано для пространственного аудио", subTitle: "Apple Music", compositionDuration: 0),
                                                                       SectionItem(image: "Классика в пространственном аудио", title: "Классика в пространственном аудио", subTitle: "Apple Music Классика", compositionDuration: 0),
                                                                       SectionItem(image: "Поп в пространственном аудио", title: "Поп в пространственном аудио", subTitle: "Apple Music", compositionDuration: 0),
                                                                       SectionItem(image: "Рок в пространственном аудио", title: "Рок в пространственном аудио", subTitle: "Apple Music Рок", compositionDuration: 0),
                                                                       SectionItem(image: "Хип-хоп в пространственном аудио", title: "Хип-хоп в пространственном аудио", subTitle: "Apple Music", compositionDuration: 0),
                                                                       SectionItem(image: "Хиты в пространственном аудио", title: "Хиты в пространственном аудио", subTitle: "Apple Music Хиты", compositionDuration: 0)],
                                                   therdSectionItem: [SectionItem(image: "Глубокий сон", title: "Поп-волна", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Глубокий сон", title: "Пип-волна", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Глубокий сон", title: "Пип-волна", subTitle: "Upple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Upple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Upple Music Поп на русском", compositionDuration: 16000)])),
            FindViewItem(
                image: "Поп на русском", title: "Поп на русском",
                categoryViewItem: CategoryViewItem(firstSectionItem: [FirstSectionItem(image: "Классика", name: "ИЗБРАННЫЙ ПЛЕЙЛИСТ", title: "ASAMMUELL", subTitle: "Поп"),
                                                                      FirstSectionItem(image: "Хиты 80-х", name: "ТОЛЬКО В APPLE MUSIC", title: "Apple Music Home Session: Zivert", subTitle: "Zivert")],
                                                   secondSectionItem: [SectionItem(image: "Глубокий сон", title: "Поп-волна", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                       SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                       SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 17000),
                                                                       SectionItem(image: "Глубокий сон", title: "Поп-волна", subTitle: "Apple Music Поп на русском", compositionDuration: 176000),
                                                                       SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 18100),
                                                                       SectionItem(image: "Колыбельные", title: "Поп", subTitle: "Apple Music Поп на русском", compositionDuration: 6000)],
                                                   therdSectionItem: [SectionItem(image: "Глубокий сон", title: "Поп-волна", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Глубокий сон", title: "Пип-волна", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Глубокий сон", title: "Пип-волна", subTitle: "Upple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Upple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Upple Music Поп на русском", compositionDuration: 16000)])),
            FindViewItem(
                image: "Поп", title: "Поп",
                categoryViewItem: CategoryViewItem(firstSectionItem: [FirstSectionItem(image: "Классика", name: "ИЗБРАННЫЙ ПЛЕЙЛИСТ", title: "ASAMMUELL", subTitle: "Поп"),
                                                                      FirstSectionItem(image: "Хиты 80-х", name: "ТОЛЬКО В APPLE MUSIC", title: "Apple Music Home Session: Zivert", subTitle: "Zivert")],
                                                   secondSectionItem: [SectionItem(image: "Глубокий сон", title: "Поп-волна", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                       SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                       SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 17000),
                                                                       SectionItem(image: "Глубокий сон", title: "Поп-волна", subTitle: "Apple Music Поп на русском", compositionDuration: 176000),
                                                                       SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 18100),
                                                                       SectionItem(image: "Колыбельные", title: "Поп", subTitle: "Apple Music Поп на русском", compositionDuration: 6000)],
                                                   therdSectionItem: [SectionItem(image: "Глубокий сон", title: "Поп-волна", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Глубокий сон", title: "Пип-волна", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Глубокий сон", title: "Пип-волна", subTitle: "Upple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Upple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Upple Music Поп на русском", compositionDuration: 16000)])),
            FindViewItem(
                image: "Рок на русском", title: "Рок на русском",
                categoryViewItem: CategoryViewItem(firstSectionItem: [FirstSectionItem(image: "Классика", name: "ИЗБРАННЫЙ ПЛЕЙЛИСТ", title: "ASAMMUELL", subTitle: "Поп"),
                                                                      FirstSectionItem(image: "Хиты 80-х", name: "ТОЛЬКО В APPLE MUSIC", title: "Apple Music Home Session: Zivert", subTitle: "Zivert")],
                                                   secondSectionItem: [SectionItem(image: "Глубокий сон", title: "Поп-волна", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                       SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                       SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 17000),
                                                                       SectionItem(image: "Глубокий сон", title: "Поп-волна", subTitle: "Apple Music Поп на русском", compositionDuration: 176000),
                                                                       SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 18100),
                                                                       SectionItem(image: "Колыбельные", title: "Поп", subTitle: "Apple Music Поп на русском", compositionDuration: 6000)],
                                                   therdSectionItem: [SectionItem(image: "Глубокий сон", title: "Поп-волна", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Глубокий сон", title: "Пип-волна", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Глубокий сон", title: "Пип-волна", subTitle: "Upple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Upple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Upple Music Поп на русском", compositionDuration: 16000)])),
            FindViewItem(
                image: "Романтика", title: "Романтика",
                categoryViewItem: CategoryViewItem(firstSectionItem: [FirstSectionItem(image: "Классика", name: "ИЗБРАННЫЙ ПЛЕЙЛИСТ", title: "ASAMMUELL", subTitle: "Поп"),
                                                                      FirstSectionItem(image: "Хиты 80-х", name: "ТОЛЬКО В APPLE MUSIC", title: "Apple Music Home Session: Zivert", subTitle: "Zivert")],
                                                   secondSectionItem: [SectionItem(image: "Глубокий сон", title: "Поп-волна", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                       SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                       SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 17000),
                                                                       SectionItem(image: "Глубокий сон", title: "Поп-волна", subTitle: "Apple Music Поп на русском", compositionDuration: 176000),
                                                                       SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 18100),
                                                                       SectionItem(image: "Колыбельные", title: "Поп", subTitle: "Apple Music Поп на русском", compositionDuration: 6000)],
                                                   therdSectionItem: [SectionItem(image: "Глубокий сон", title: "Поп-волна", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Глубокий сон", title: "Пип-волна", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Глубокий сон", title: "Пип-волна", subTitle: "Upple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Upple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Upple Music Поп на русском", compositionDuration: 16000)])),
            FindViewItem(
                image: "Хип-Хоп на русском", title: "Хип-хоп на русском",
                categoryViewItem: CategoryViewItem(firstSectionItem: [FirstSectionItem(image: "Классика", name: "ИЗБРАННЫЙ ПЛЕЙЛИСТ", title: "ASAMMUELL", subTitle: "Поп"),
                                                                      FirstSectionItem(image: "Хиты 80-х", name: "ТОЛЬКО В APPLE MUSIC", title: "Apple Music Home Session: Zivert", subTitle: "Zivert")],
                                                   secondSectionItem: [SectionItem(image: "Глубокий сон", title: "Поп-волна", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                       SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                       SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 17000),
                                                                       SectionItem(image: "Глубокий сон", title: "Поп-волна", subTitle: "Apple Music Поп на русском", compositionDuration: 176000),
                                                                       SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 18100),
                                                                       SectionItem(image: "Колыбельные", title: "Поп", subTitle: "Apple Music Поп на русском", compositionDuration: 6000)],
                                                   therdSectionItem: [SectionItem(image: "Глубокий сон", title: "Поп-волна", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Глубокий сон", title: "Пип-волна", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Глубокий сон", title: "Пип-волна", subTitle: "Upple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Upple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Upple Music Поп на русском", compositionDuration: 16000)])),
            FindViewItem(
                image: "Хиты", title: "Хиты",
                categoryViewItem: CategoryViewItem(firstSectionItem: [FirstSectionItem(image: "Классика", name: "ИЗБРАННЫЙ ПЛЕЙЛИСТ", title: "ASAMMUELL", subTitle: "Поп"),
                                                                      FirstSectionItem(image: "Хиты 80-х", name: "ТОЛЬКО В APPLE MUSIC", title: "Apple Music Home Session: Zivert", subTitle: "Zivert")],
                                                   secondSectionItem: [SectionItem(image: "Глубокий сон", title: "Поп-волна", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                       SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                       SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 17000),
                                                                       SectionItem(image: "Глубокий сон", title: "Поп-волна", subTitle: "Apple Music Поп на русском", compositionDuration: 176000),
                                                                       SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 18100),
                                                                       SectionItem(image: "Колыбельные", title: "Поп", subTitle: "Apple Music Поп на русском", compositionDuration: 6000)],
                                                   therdSectionItem: [SectionItem(image: "Глубокий сон", title: "Поп-волна", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Глубокий сон", title: "Пип-волна", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Глубокий сон", title: "Пип-волна", subTitle: "Upple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Upple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Upple Music Поп на русском", compositionDuration: 16000)])),
            FindViewItem(
                image: "Хорошее настроение", title: "Хорошее настроение",
                categoryViewItem: CategoryViewItem(firstSectionItem: [FirstSectionItem(image: "Классика", name: "ИЗБРАННЫЙ ПЛЕЙЛИСТ", title: "ASAMMUELL", subTitle: "Поп"),
                                                                      FirstSectionItem(image: "Хиты 80-х", name: "ТОЛЬКО В APPLE MUSIC", title: "Apple Music Home Session: Zivert", subTitle: "Zivert")],
                                                   secondSectionItem: [SectionItem(image: "Глубокий сон", title: "Поп-волна", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                       SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                       SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 17000),
                                                                       SectionItem(image: "Глубокий сон", title: "Поп-волна", subTitle: "Apple Music Поп на русском", compositionDuration: 176000),
                                                                       SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 18100),
                                                                       SectionItem(image: "Колыбельные", title: "Поп", subTitle: "Apple Music Поп на русском", compositionDuration: 6000)],
                                                   therdSectionItem: [SectionItem(image: "Глубокий сон", title: "Поп-волна", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Глубокий сон", title: "Пип-волна", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Apple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Глубокий сон", title: "Пип-волна", subTitle: "Upple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Upple Music Поп на русском", compositionDuration: 16000),
                                                                      SectionItem(image: "Колыбельные", title: "Поп-карамель", subTitle: "Upple Music Поп на русском", compositionDuration: 16000)]))
        ]
    }
    
    static var findViewItem = FindViewItem.getFindViewData()
}
