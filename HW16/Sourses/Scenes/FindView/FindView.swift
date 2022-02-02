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
            Spacer()
        }
    }
}

//struct FindView_Previews: PreviewProvider {
//    static var previews: some View {
//        FindView(showCancelButton: Binding<showCancelButton>)
//    }
//}
