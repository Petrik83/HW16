//
//  VerticalCell.swift
//  HW16
//
//  Created by Aliaksandr Piatrovich on 28.01.22.
//

import SwiftUI

struct VerticalCell: View {
    var body: some View {
        GeometryReader { geometry in
            HStack {
                Rectangle()
                    .foregroundColor(.red)
                    .cornerRadius(5)
                    .frame(width: (geometry.size.width / 3) - 15, height: (geometry.size.width / 3) - 15)
                    .padding(.leading,5)
                VStack(alignment: .leading) {
                    Spacer()
                    Text("ddffdfd")
                    Text("dfdfdfdfdfdfd")
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
        VerticalCell()
    }
}
