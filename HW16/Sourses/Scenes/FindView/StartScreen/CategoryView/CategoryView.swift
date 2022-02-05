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
    let secondRows = [GridItem(.fixed(UIScreen.main.bounds.width*0.53)),
                      GridItem(.fixed(UIScreen.main.bounds.width*0.53))]
    let thirdRows: [GridItem] = Array(repeating: .init(.fixed(60)), count: 4)
    
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
            .padding(.horizontal, 5)
            Text(title)
                .font(.title.bold())
                .padding(.bottom, -5)
                .padding(.leading, 20)
            
            Divider()
            
            ScrollView(.vertical, showsIndicators: false) {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows) {
                        ForEach(0..<categoryItem.firstSectionItem.count) {index in
                            MainHorizontalCell(mainHorizontalCellItem: categoryItem.firstSectionItem[index])
                                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.width * 0.9)
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
                                .frame(width: UIScreen.main.bounds.width*0.47)
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
                    LazyHGrid(rows: thirdRows, spacing: 1) {
                        ForEach(0..<categoryItem.therdSectionItem.count) { index in
                            ThirdHorizontalCell(thirdHorizontalCellItem: categoryItem.therdSectionItem[index])
                                .frame(width: UIScreen.main.bounds.width*0.93)
                        }
                    }
                }
                .padding(.bottom, 80)
            }
        }
    }
}



struct StandartFindMoreInfo_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(categoryItem: FindViewItem.findViewItem[0].categoryViewItem)
    }
}
