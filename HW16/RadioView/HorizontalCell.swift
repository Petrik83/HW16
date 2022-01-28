//
//  HorizontalCell.swift
//  HW16
//
//  Created by Aliaksandr Piatrovich on 28.01.22.
//

import SwiftUI

struct HorizontalCell: View {
    @State var cellDAta: HorizontalRadioItem
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading) {
                Divider()
                Text("ИЗБРАННАЯ РАДИОСТАНЦИЯ")
                    .foregroundColor(.secondary)
                    .font(.caption)
                Text(cellDAta.title)
                    .font(.title)

                Text("Станция Apple Music")
                    .foregroundColor(.secondary)
                    .font(.title)
                Image(cellDAta.image)
                    .resizable()
                    .cornerRadius(5)
            }
            .frame(width: geometry.size.width, height: geometry.size.width)
        
    }
}
}

struct HorizontalCell_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalCell(cellDAta: HorizontalRadioItem(image: "Хиты", title: "Хиты"))
    }
}
