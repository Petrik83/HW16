//
//  RadioView.swift
//  HW16
//
//  Created by Aliaksandr Piatrovich on 28.01.22.
//

import SwiftUI

struct RadioView: View {
    let rows = [
        GridItem(.flexible())
    ]
    let columns = [
        GridItem(.flexible())
    ]
    
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.vertical, showsIndicators: false) {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows) {
                        ForEach(0..<10) { index in
                            HorizontalCell()
                                .frame(width: geometry.size.width * 0.9, height: geometry.size.width * 0.9)
                        }
                    }
                    .padding(.leading, 20.0)
                }
                LazyVGrid(columns: columns) {
                    Section(header: HStack {
                        Text("Станции")
                            .bold()
                            .font(.title)
                        Spacer()
                    }) {
                        ForEach(0..<10) { index in
                            VerticalCell()
                        }
                    }
                }
                .padding(.horizontal, 20.0)
                
            }
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
