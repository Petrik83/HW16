//
//  ThirdHorizontalCell.swift
//  HW16
//
//  Created by Александр Петрович on 05.02.2022.
//

import SwiftUI

struct ThirdHorizontalCell: View {
    var thirdHorizontalCellItem: SectionItem
    @EnvironmentObject var searchText: SearchText
    
    
    var body: some View {
        ZStack {
            HStack {
                Image(thirdHorizontalCellItem.image)
                    .resizable()
                    .cornerRadius(5)
                    .frame(width: 60, height: 60)
                VStack(alignment: .leading){
                    Text(thirdHorizontalCellItem.title)
                    Text(thirdHorizontalCellItem.subTitle)
                        .foregroundColor(.secondary)
                    Divider()
                }
            }
            .padding(.leading)
            
            HStack {
                Button {
                    searchText.searchResult = thirdHorizontalCellItem
                } label: {
                    Rectangle()
                        .foregroundColor(Color(UIColor.clear))
                        .frame(height: 60)
                }
                Spacer()
                Button {
                    print("Hello!")
                } label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(.primary)
                }
                .padding(.trailing)
            }
            
        }
        
    }
}

struct ThirdHorizontalCell_Previews: PreviewProvider {
    static var previews: some View {
        ThirdHorizontalCell(thirdHorizontalCellItem: FindViewItem.findViewItem[0].categoryViewItem.therdSectionItem[0])
    }
}
