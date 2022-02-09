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
    
//    сделать клавиатуру убирающейся
    
    var body: some View {
        VStack {
            Picker(selection: $picker.pickerSelection, label: Text("")) {
                ForEach(pickerChoices, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.segmented)
            .padding(.horizontal, 20)
            Spacer()
            
            if searchText.searchText == "" {
                if !searchText.lastSearch.isEmpty {
                    HStack{
                        Text("Недавние поиски")
                            .font(Font.body.bold())
                        Spacer()
                        Button {
                            searchText.lastSearch.removeAll()
                        } label: {
                            Text("Очистить")
                                .foregroundColor(.red)
                                .font(Font.body.bold())
                        }
                    }
                    .padding(.horizontal, 20)
                }
                
                List{
                    ForEach (Array(Set(searchText.lastSearch)), id:\.self) { index in
                        Button {
                            searchText.searchResult = index
                            UIApplication.shared.endEditing(true)
                        } label: {
                            SearchResultCell(SearchResultCellItem: index)
                        }
                    }
                }
                .listStyle(.plain)
                .gesture(DragGesture().onChanged{_ in UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)})
            } else {
                List {
                    ForEach(searchHints(incomingData: FindViewItem.findViewItem, text: searchText.searchText), id:\.self) { index in
                        Button {
                            searchText.searchText = index
                        } label: {
                            HStack(spacing: 0) {
                                Image(systemName: "magnifyingglass")
                                    .padding(.trailing, 10)
                                Text(searchText.searchText)
                                Text(index.dropFirst(searchText.searchText.count))
                                    .foregroundColor(.secondary)
                                Spacer()
                            }
                        }


                    }
                    ForEach (searchFilter(incomingData: FindViewItem.findViewItem, text: searchText.searchText), id:\.self) { index in
                        Button {
                            searchText.searchResult = index
                            searchText.lastSearch.append(index)
                            UIApplication.shared.endEditing(true)
                        } label: {
                            SearchResultCell(SearchResultCellItem: index)
                            
                        }
                    }
                }
                .listStyle(.plain)
                .gesture(DragGesture().onChanged{_ in UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)})
            }
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
    return Array(Set(array))
}

func searchHints(incomingData: [FindViewItem], text: String) -> [String] {
    var array = [String]()
    incomingData.forEach { item in
        for item in item.categoryViewItem.therdSectionItem {
            if text != "" {
                if item.title.hasPrefix(text) {
                    array.append(item.title)
                }
                if item.subTitle.hasPrefix(text) {
                    array.append(item.subTitle)
                }
            }
        }
    }
    return Array(Set(array))
}
