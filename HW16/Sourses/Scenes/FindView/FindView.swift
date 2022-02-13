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
//                .onReceive(NotificationCenter.default.publisher(for: UIResponder.keyboardDidHideNotification)) { _ in
//                            PlayerView()
//                        }
            switch showCancelButton {
            case true:
                SearchView()
            case false:
                Divider()
                StartFindView()
                    .padding(.horizontal, 20)
            }
        }
    }
}
