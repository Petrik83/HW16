//
//  HorizontalCell.swift
//  HW16
//
//  Created by Aliaksandr Piatrovich on 28.01.22.
//

import SwiftUI

struct HorizontalCell: View {
    var body: some View {
        Rectangle()
            .foregroundColor(.blue)
            .cornerRadius(20)
    }
}

struct HorizontalCell_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalCell()
    }
}
