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
        FindField(showCancelButton: $showCancelButton)
    }
}

//struct FindView_Previews: PreviewProvider {
//    static var previews: some View {
//        FindView()
//    }
//}
