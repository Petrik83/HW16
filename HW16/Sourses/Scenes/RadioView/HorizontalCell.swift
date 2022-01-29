//
//  HorizontalCell.swift
//  HW16
//
//  Created by Aliaksandr Piatrovich on 28.01.22.
//

import SwiftUI

struct HorizontalCell: View {
    @State var cellData: RadioItem
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading) {
                Divider()
                Text("ИЗБРАННАЯ РАДИОСТАНЦИЯ")
                    .foregroundColor(.secondary)
                    .font(.caption)
                Text(cellData.title)
                    .font(.title)
                Text("Станция Apple Music")
                    .foregroundColor(.secondary)
                    .font(.title)
                Image(cellData.image)
                    .resizable()
                    .cornerRadius(5)
            }
            .frame(width: geometry.size.width, height: geometry.size.width)
        }
    }
}

struct HorizontalCell_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalCell(cellData: RadioItem(image: "Хиты", title: "Хиты"))
    }
}
