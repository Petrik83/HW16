//
//  FindView.swift
//  HW16
//
//  Created by Aliaksandr Piatrovich on 2.02.22.
//

import SwiftUI

struct FindView: View {
    @Binding var showCancelButton: Bool
    
    var body: some View {
        
        VStack {
            FindField(showCancelButton: $showCancelButton)
            ScrollView(.vertical, showsIndicators: false) {
                switch showCancelButton {
                case true:
                    SearchFindView()
                case false:
                    VStack {
                        Divider()
                        StandartFindView()
                    }
                    .padding(.horizontal, 20)
                }
            }
        }
    }
}
