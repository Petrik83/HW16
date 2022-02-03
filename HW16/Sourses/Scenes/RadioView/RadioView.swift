//
//  RadioView.swift
//  HW16
//
//  Created by Aliaksandr Piatrovich on 28.01.22.
//

import SwiftUI

struct RadioView: View {
    let rows = [GridItem(.flexible())]
    let columns = [GridItem(.flexible())]
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.vertical, showsIndicators: false) {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows) {
                        ForEach(0..<RadioItem.horizontalRadioItem.count) { index in
                            HorizontalCell(cellData: RadioItem.horizontalRadioItem[index])
                                .frame(width: geometry.size.width * RadioViewMetric.lazyHGridScale, height: geometry.size.width * RadioViewMetric.lazyHGridScale)
                                .padding(.trailing, RadioViewMetric.lazyHGridPadding)
                        }
                    }
                }
                Divider()
                    .padding(.horizontal, RadioViewMetric.horizontaldividerPadding)
                
                LazyVGrid(columns: columns) {
                    Section(header: HStack {
                        Text("Станции")
                            .bold()
                            .font(.title)
                        Spacer()
                    }) {
                        ForEach(0..<RadioItem.verticalRadioItem.count) { index in
                            VerticalCell(cellData: RadioItem.verticalRadioItem[index])
                                .frame(width: geometry.size.width, height: geometry.size.width / RadioViewMetric.verticalRadioItemFrameDivider)
                        }
                    }
                }
            }
            .padding(.leading, RadioViewMetric.verticalScrollViewPadding)
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}

enum RadioViewMetric {
    static let lazyHGridScale = 0.9
    static let lazyHGridPadding = 5.0
    
    static let horizontaldividerPadding = 20.0
    static let verticalScrollViewPadding = 10.0
    
    static let verticalRadioItemFrameDivider = 3.0
}
