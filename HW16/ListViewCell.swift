//
//  ListViewCell.swift
//  HW16
//
//  Created by Aliaksandr Piatrovich on 26.01.22.
//

import SwiftUI

struct ListViewCell: View {
    @State var cellDAta: Item
    var body: some View {
                HStack {
                    Image(systemName: cellDAta.icon)
                        .foregroundColor(.red)
                    Text(cellDAta.title)
                        .foregroundColor(.red)
                }
        }
}
