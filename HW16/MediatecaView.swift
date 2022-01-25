//
//  MediatecaView.swift
//  HW16
//
//  Created by Aliaksandr Piatrovich on 25.01.22.
//

import SwiftUI

struct MediatecaView: View {
    var body: some View {
        NavigationView {
            VStack{
                Text("Ищете свою музыку?")
                    .bold()
                    .font(.title)
                Text("Здесь появится купленная Вами в iTunes Store музыка")
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)

            }
                .navigationTitle("Медиатека")
                .navigationBarItems(trailing:
                                        Text("Править")
                                        .foregroundColor(.red))
               
        }
    }
}

struct MediatecaView_Previews: PreviewProvider {
    static var previews: some View {
        MediatecaView()
    }
}
