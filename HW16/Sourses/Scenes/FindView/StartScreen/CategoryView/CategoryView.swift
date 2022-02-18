//
//  StandartFindMoreInfo.swift
//  HW16
//
//  Created by Александр Петрович on 03.02.2022.
//

import SwiftUI

struct CategoryView: View {
    
    @Environment(\.presentationMode) var presentation
    var categoryItem: CategoryViewItem
    var title = String()
    let rows = [GridItem(.flexible())]
    let secondRows = [GridItem(.fixed(UIScreen.main.bounds.width * CategoryViewMetric.secondRowsScale)),
                      GridItem(.fixed(UIScreen.main.bounds.width * CategoryViewMetric.secondRowsScale))]
    let thirdRows: [GridItem] = Array(repeating: .init(.fixed(CategoryViewMetric.thirdRowsHeight)), count: CategoryViewMetric.thirdRowsCount)
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Button {
                    self.presentation.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "chevron.backward")
                        .foregroundColor(.red)
                        .font(.title)
                }
                Spacer()
                Button {
                    print("Нажата кнопка")
                } label: {
                    Image(systemName: "ellipsis.circle.fill")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(Color.red, Color(uiColor: .systemGray6))
                        .font(.title)
                }
            }
            .padding(.horizontal, CategoryViewMetric.buttonsPadding)
            Text(title)
                .font(.title.bold())
                .padding(.bottom, CategoryViewMetric.titleTextPaddingBottom)
                .padding(.leading, CategoryViewMetric.titleTextPaddingLeading)
            
            Divider()
            
            ScrollView(.vertical, showsIndicators: false) {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows) {
                        ForEach(0..<categoryItem.firstSectionItem.count) {index in
                            MainHorizontalCell(mainHorizontalCellItem: categoryItem.firstSectionItem[index])
                                .frame(width: UIScreen.main.bounds.width * CategoryViewMetric.firstLazyHGridScale, height: UIScreen.main.bounds.width * CategoryViewMetric.firstLazyHGridScale)
                        }
                    }
                }
                Divider()
                
                HStack {
                    Text("Плейлисты")
                        .font(.title.bold())
                    Spacer()
                    Button {
                        print("See all buttton pressed")
                    } label: {
                        Text("См. все")
                            .foregroundColor(.red)
                    }
                }
                .padding(.horizontal)
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: secondRows, spacing: 0) {
                        ForEach(0..<categoryItem.secondSectionItem.count) {index in
                            SecondaryHorizontalCell(secondaryHorizontalCellItem: categoryItem.secondSectionItem[index])
                                .frame(width: UIScreen.main.bounds.width * CategoryViewMetric.secondLazyHGridScale)
                        }
                    }
                }
                Divider()
                
                HStack {
                    Text("Горячие треки")
                        .font(.title.bold())
                    Spacer()
                    Button {
                        print("See all buttton pressed")
                    } label: {
                        Text("См. все")
                            .foregroundColor(.red)
                    }
                }
                .padding(.horizontal)
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: thirdRows, spacing: CategoryViewMetric.thirdLazyHGridSpacing) {
                        ForEach(0..<categoryItem.therdSectionItem.count) { index in
                            ThirdHorizontalCell(thirdHorizontalCellItem: categoryItem.therdSectionItem[index])
                                .frame(width: UIScreen.main.bounds.width * CategoryViewMetric.thirdLazyHGridScale)
                        }
                    }
                }
                .padding(.bottom, CategoryViewMetric.thirdLazyHGridPadding)
            }
        }
    }
}

enum CategoryViewMetric {
    static let secondRowsScale = 0.53

    static let thirdRowsHeight = 60.0
    static let thirdRowsCount = 4
    
    static let buttonsPadding = 5.0
    
    static let titleTextPaddingBottom = -5.0
    static let titleTextPaddingLeading = 20.0
    
    static let firstLazyHGridScale = 0.9
    static let secondLazyHGridScale = 0.47
    static let thirdLazyHGridSpacing = 1.0
    static let thirdLazyHGridScale = 0.93
    static let thirdLazyHGridPadding = 80.0
}

struct StandartFindMoreInfo_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(categoryItem: FindViewItem.findViewItem[0].categoryViewItem)
    }
}
