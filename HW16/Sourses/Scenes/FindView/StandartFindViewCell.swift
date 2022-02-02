//
//  StandartFindViewCell.swift
//  HW16
//
//  Created by Александр Петрович on 02.02.2022.
//

import SwiftUI

struct StandartFindViewCell: View {
    @State var cellData: RadioItem
    
    var body: some View {
        GeometryReader { geometry in
            HStack {
                Image(cellData.image)
                    .resizable()
                    .cornerRadius(10)
                    .padding(.horizontal,3)

            }
        }    }
}

struct StandartFindViewCell_Previews: PreviewProvider {
    static var previews: some View {
        StandartFindViewCell(cellData: RadioItem(image: "Хиты", title: "Хиты"))
    }
}
