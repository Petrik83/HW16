//
//  VerticalCell.swift
//  HW16
//
//  Created by Aliaksandr Piatrovich on 28.01.22.
//

import SwiftUI

struct VerticalCell: View {
    @State var cellData: RadioItem
    var body: some View {
        GeometryReader { geometry in
            HStack {
                Image(cellData.image)
                    .resizable()
                    .cornerRadius(5)
                    .frame(width: (geometry.size.width / 3) - 15, height: (geometry.size.width / 3) - 15)
                    .padding(.leading,5)
                VStack(alignment: .leading) {
                    Spacer()
                    Text(cellData.title)
                    Text("Станция Apple Music")
                    Spacer()
                    Divider()
                }
                Spacer()
            }
            .frame(width: geometry.size.width, height: geometry.size.width / 3)
        }
    }
}

struct VerticalCell_Previews: PreviewProvider {
    static var previews: some View {
        VerticalCell(cellData: RadioItem(image: "Хиты", title: "Хиты"))
    }
}
