//
//  SearchResultCell.swift
//  HW16
//
//  Created by Александр Петрович on 09.02.2022.
//

import SwiftUI

struct SearchResultCell: View {
    var SearchResultCellItem: SectionItem
    var body: some View {
        HStack {
            Image(SearchResultCellItem.image)
                .resizable()
                .cornerRadius(5)
                .frame(width: 60, height: 60)
            VStack{
                HStack {
                    VStack(alignment: .leading) {
                        Text(SearchResultCellItem.title)
                        Text(SearchResultCellItem.subTitle)
                            .foregroundColor(.secondary)
                    }
                    Spacer()
                    Image(systemName: "ellipsis")
                        .foregroundColor(.primary)
                        .onTapGesture {
                            print("Button tapped")
                        }
                        .padding(.trailing)
                }
            }
        }
    }
}


struct SearchResultCell_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultCell(SearchResultCellItem: FindViewItem.findViewItem[0].categoryViewItem.therdSectionItem[0])
    }
}
