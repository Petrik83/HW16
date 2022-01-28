//
//  VerticalCell.swift
//  HW16
//
//  Created by Aliaksandr Piatrovich on 28.01.22.
//

import SwiftUI

struct VerticalCell: View {
    var body: some View {
        
        VStack {

            Rectangle()
                .foregroundColor(.red)
                .frame(height: 200)
            .cornerRadius(20)
        }
    }
}

struct VerticalCell_Previews: PreviewProvider {
    static var previews: some View {
        VerticalCell()
    }
}
