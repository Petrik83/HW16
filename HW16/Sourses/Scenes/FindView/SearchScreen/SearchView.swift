//
//  SearchFindView.swift
//  HW16
//
//  Created by Александр Петрович on 02.02.2022.
//

import SwiftUI

struct SearchView: View {
    var pickerChoices = ["Apple Music", "Ваша Медиатека"]
    var columns = [GridItem(.flexible())]
    @EnvironmentObject var picker: PickerChoise
    @EnvironmentObject var searchText: SearchText
    @State var dataCount = 3
    
    var body: some View {
        VStack {
            
            Picker(selection: $picker.pickerSelection, label: Text("")) {
                ForEach(pickerChoices, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.segmented)
            .padding(.horizontal, 20)
            Text("\(searchFilter(incomingData: FindViewItem.findViewItem, text: searchText.searchText).count)")
            Spacer()

//            dataCount = searchFilter(incomingData: FindViewItem.findViewItem, text: searchText.searchText).count
            
//            ScrollView(.vertical, showsIndicators: false) {
//                LazyVGrid(columns: columns)
                
                List {
                    
                    ForEach (searchFilter(incomingData: FindViewItem.findViewItem, text: searchText.searchText), id:\.self) { index in
//                        ZStack {
//                            Rectangle().foregroundColor(.red)
//                            Text("\(searchFilter(incomingData: FindViewItem.findViewItem, text: searchText.searchText).count)  ра")
//
//                        }
//                    }
                        ThirdHorizontalCell(thirdHorizontalCellItem: index)
                }
                }.listStyle(.plain)
            
            // вынести статик фанк из радиоитем сюда
            //            List {
            //                                // Filtered list of names
            //                ForEach(FindViewItem.toArray(incomingData: FindViewItem.findViewItem).filter{$0.hasPrefix(searchText.searchText) || searchText.searchText == ""}, id:\.self) {
            //                                    searchText in Text(searchText)
            //                                }
        }
        
    }
}

func searchFilter(incomingData: [FindViewItem], text: String) -> [SectionItem] {
    var array = [SectionItem]()
    incomingData.forEach { item in
        
        for i in 0..<item.categoryViewItem.therdSectionItem.count {
            if text != "" {
                if (item.categoryViewItem.therdSectionItem[i].title.hasPrefix(text) || item.categoryViewItem.therdSectionItem[i].subTitle.hasPrefix(text)) {
                    array.append(item.categoryViewItem.therdSectionItem[i])
                }
            }
        }
    }
    return array
}

func searchCount(incomingData: [FindViewItem]) -> Int {
    var array = [SectionItem]()
    incomingData.forEach { item in
        
        for i in 0..<item.categoryViewItem.therdSectionItem.count {
            
            array.append(item.categoryViewItem.therdSectionItem[i])
            
        }
    }
    return array.count
}

