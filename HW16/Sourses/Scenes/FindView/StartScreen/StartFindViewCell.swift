//
//  StandartFindViewCell.swift
//  HW16
//
//  Created by Александр Петрович on 02.02.2022.
//

import SwiftUI

struct StartFindViewCell: View {
    var cellData: FindViewItem
    
    var body: some View {
        GeometryReader { geometry in
                NavigationLink {
                    CategoryView(categoryItem: cellData.categoryViewItem, title: cellData.title)
                        .navigationBarHidden(true)
                } label: {
                    
                    ZStack(alignment: .leading) {
                        Image(cellData.image)
                            .resizable()
                            .cornerRadius(10)
                        .padding(.horizontal,3)
                        VStack {
                            Spacer()
                            Text(cellData.title)
                                .foregroundColor(.white)
                                .font(Font.body.bold())
                                .multilineTextAlignment(.leading)
                                .padding([.bottom, .leading], 10)
                                
                        }
                    }
            }
        }
    }
}

struct StartFindViewCell_Previews: PreviewProvider {
    static var previews: some View {
        StartFindViewCell(cellData: FindViewItem.findViewItem[0])
            .frame(width: 300, height: 150)
    }
}
