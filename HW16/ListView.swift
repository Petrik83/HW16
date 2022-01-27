//
//  ListView.swift
//  HW16
//
//  Created by Aliaksandr Piatrovich on 26.01.22.
//

import SwiftUI

struct ListView: View {
    @State var list = Item.getData()
    @State var selection: Set<String> = []
    
    var body: some View {
        List(selection: $selection) {
            ForEach(list, id: \.self) { index in
                ListViewCell(cellDAta: index)
            }
            .onMove(perform: move)
            
        }
        .environment(\.editMode, Binding.constant(EditMode.active))
        .accentColor(.red)
    }

    func move(from source: IndexSet, to destination: Int) {
           list.move(fromOffsets: source, toOffset: destination)
       }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
