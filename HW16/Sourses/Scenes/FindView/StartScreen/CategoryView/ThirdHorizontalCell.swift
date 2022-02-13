//
//  ThirdHorizontalCell.swift
//  HW16
//
//  Created by Александр Петрович on 05.02.2022.
//

import SwiftUI

struct ThirdHorizontalCell: View {
    var thirdHorizontalCellItem: SectionItem

    var body: some View {
        HStack {
            Image(thirdHorizontalCellItem.image)
                .resizable()
                .cornerRadius(5)
                .frame(width: 60, height: 60)
            VStack{
                HStack {
                    VStack(alignment: .leading) {
                        Text(thirdHorizontalCellItem.title)
                        Text(thirdHorizontalCellItem.subTitle)
                            .foregroundColor(.secondary)
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
                Divider()
            }
        }
        .padding(.leading)
        
    }
}

struct ThirdHorizontalCell_Previews: PreviewProvider {
    static var previews: some View {
        ThirdHorizontalCell(thirdHorizontalCellItem: FindViewItem.findViewItem[0].categoryViewItem.therdSectionItem[0])
    }
}
