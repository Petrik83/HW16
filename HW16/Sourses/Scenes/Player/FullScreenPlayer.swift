//
//  FullScreenPlayer.swift
//  HW16
//
//  Created by Александр Петрович on 14.02.2022.
//

import SwiftUI

struct FullScreenPlayer: View {
    @EnvironmentObject var searchText: SearchText
    @EnvironmentObject var playerPresenter: PlayerPresenter
    
    let fullHeight: CGFloat = UIScreen.main.bounds.height
    let minHeight: CGFloat = UIScreen.main.bounds.height / 2 + 100
    @State private var curHeight: CGFloat = UIScreen.main.bounds.height
    
    var body: some View {
        ZStack(alignment: .bottom) {
            if playerPresenter.showMaxPlayer {
                Color.white
                    .opacity(0.3)
                    .ignoresSafeArea()
                
                VStack{
                    ZStack {
                        Capsule()
                            .frame(width: 40, height: 6)
                            .onTapGesture {
                                playerPresenter.showMaxPlayer = false
                            }
                    }
                    .frame(height: 100)
                    .frame(maxWidth: .infinity)
                    .background(Color.white.opacity(0.00001))
                    .gesture(dragGesture)
                    
                    
                    ZStack {
                        Button {
                            playerPresenter.showMaxPlayer = false
                        } label: {
                            Text("HELLO!!!")
                        }
                    }
                    .frame(maxHeight: .infinity)
                    .padding(.bottom, 35)
                    
                }
                .frame(maxHeight: curHeight)
                .frame(maxWidth: .infinity)
                .background(
                    ZStack{
                        Rectangle()
                            .frame(height: curHeight)
                            .foregroundColor(.white)
                    Image(searchText.searchResult.image).resizable().blur(radius: 50)
                    }
                        .cornerRadius(30)
                )
                .transition(.move(edge: .bottom))
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
        .animation(.easeInOut)
        
    }
    @State private var prevDrugTranslations = CGSize.zero
    
    var dragGesture: some Gesture {
        DragGesture(minimumDistance: 0, coordinateSpace: .global)
            .onChanged { val in
                let dragAmount = val.translation.height - prevDrugTranslations.height
                curHeight -= dragAmount
                prevDrugTranslations = val.translation
            }
            .onEnded { val in
                prevDrugTranslations = .zero
                if curHeight > minHeight {
                    curHeight = UIScreen.main.bounds.height
                } else {
                    playerPresenter.showMaxPlayer = false
                    curHeight = UIScreen.main.bounds.height
                }
            }
    }
}


//struct FullScreenPlayer_Previews: PreviewProvider {
//    static var previews: some View {
//        FullScreenPlayer(isPresented: .constant(false))
//    }
//}
