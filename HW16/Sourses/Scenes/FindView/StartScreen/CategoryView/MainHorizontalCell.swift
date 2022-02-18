//
//  MainHorizontalCell.swift
//  HW16
//
//  Created by Александр Петрович on 05.02.2022.
//

import SwiftUI

struct MainHorizontalCell: View {
    var mainHorizontalCellItem: FirstSectionItem
    var body: some View {
        VStack(alignment: .leading) {
            Text(mainHorizontalCellItem.name)
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(.secondary)
            Text(mainHorizontalCellItem.title)
                .font(.system(size: 20, weight: .medium))
                .lineLimit(1)
            Text(mainHorizontalCellItem.subTitle)
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.secondary)
            Image(mainHorizontalCellItem.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
        }
        .padding(.leading)
    }
}

struct MainHorizontalCell_Previews: PreviewProvider {
    static var previews: some View {
        MainHorizontalCell(mainHorizontalCellItem: FindViewItem.findViewItem[0].categoryViewItem.firstSectionItem[1])
    }
}
