//
//  FullScreenPlayer.swift
//  HW16
//
//  Created by Александр Петрович on 14.02.2022.
//

import SwiftUI
import MediaPlayer

struct FullScreenPlayer: View {
    @EnvironmentObject var searchText: SearchText
    @EnvironmentObject var playerPresenter: PlayerPresenter
    @State private var timerSlider: Double = 0

    @State private var volumeSlider: Float = 0
    @State var slayderTimer: Timer? = nil
    
    let fullHeight: CGFloat = UIScreen.main.bounds.height
    let minHeight: CGFloat = UIScreen.main.bounds.height / 2 + 100
    
    let pauseImageHeight: CGFloat = UIScreen.main.bounds.width/5*4
    let playImageHeight: CGFloat = UIScreen.main.bounds.width/5*3
    @State private var curentImageHeight: CGFloat = UIScreen.main.bounds.width/5*3
    @State private var curHeight: CGFloat = UIScreen.main.bounds.height
    
    var body: some View {
        ZStack(alignment: .bottom) {
            if playerPresenter.showMaxPlayer {
//                Color.white
//                    .opacity(0.3)
//                    .ignoresSafeArea()
//
                VStack{
                    ZStack {
                        Capsule()
                            .foregroundColor(.gray)
                            .frame(width: 40, height: 6)
                            .onTapGesture {
                                playerPresenter.showMaxPlayer = false
                            }
                    }
                    .frame(height: 100)
                    .frame(maxWidth: .infinity)
                    .background(Color(uiColor: .clear))
                    .gesture(dragGesture)
                    
                    ZStack {
                        VStack {
                            ZStack{
                                Rectangle()
                                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
                                    .foregroundColor(Color(uiColor: .clear))
                                
                                Image(searchText.searchResult.image)
                                    .resizable()
                                    .frame(width: curentImageHeight, height: curentImageHeight)
                                    .cornerRadius(10)
                            }
                            VStack{
                                HStack{
                                    VStack(alignment: .leading){
                                        Text(searchText.searchResult.title)
                                            .foregroundColor(.white)
                                            .font(.system(size: 28, weight: .medium, design: .default))
                                        Text(searchText.searchResult.subTitle)
                                            .foregroundStyle(Color(uiColor: .systemGray3))
                                            .font(.system(size: 22, weight: .regular, design: .default))
                                    }
                                    Spacer()
                                    Button {
                                        print("Нажата кнопка")
                                    } label: {
                                        Image(systemName: "ellipsis.circle.fill")
                                            .symbolRenderingMode(.palette)
                                            .foregroundStyle(Color.white, Color(uiColor: .systemGray).opacity(0.4))
                                            .font(.title)
                                    }
                                }
                                
                                Slider(value: $timerSlider, in: 0...searchText.searchResult.compositionDuration)
                                    .accentColor(.gray)
                                
                                HStack{
                                    Text(timeConverter(time: Int(timerSlider)))
                                    Spacer()
                                    Text("-\(timeConverter(time:Int(abs(timerSlider - searchText.searchResult.compositionDuration))))")
                                }
                                .foregroundColor(.white)
                                .font(.system(size: 12))


                            }
                            .padding(.horizontal, 30)
                            
                            Spacer()
                            HStack{
                                Spacer()
                                Button {
                                    timerSlider = 0
                                } label: {
                                    Image(systemName: "backward.fill")
                                        .font(.title)
                                }
                                Spacer()
                                Button {
                                    if playerPresenter.isPlayButtonPressed {
                                        withAnimation(.linear(duration: 1)) {
                                            self.curentImageHeight = playImageHeight
                                        }
                                    } else {
                                        withAnimation(.linear(duration: 1)) {
                                            self.curentImageHeight = pauseImageHeight
                                        }
                                    }
                                    playerPresenter.isPlayButtonPressed.toggle()
                                    if playerPresenter.isPlayButtonPressed {
                                        startTimer()
                                    } else {
                                        stopTimer()
                                    }
                                    
                                } label: {
                                    if playerPresenter.isPlayButtonPressed {
                                        Image(systemName: "pause.fill")
                                    } else {
                                        Image(systemName: "play.fill")
                                    }
                                }
                                .font(.system(size: 45))

                                
                                Spacer()
                                Button {
                                    timerSlider = searchText.searchResult.compositionDuration
                                } label: {
                                    Image(systemName: "forward.fill")
                                        .font(.title)
                                }
                                Spacer()
                            }
                            .foregroundColor(.white)

                            Spacer()
                            VStack(spacing: 20) {
                                HStack{
                                    Image(systemName: "speaker.fill")
                                        .font(.system(size: 12))
                                        .foregroundStyle(Color(uiColor: .systemGray5))
                                    
                                    Slider(value: $volumeSlider, in: 0...1,step: 0.0625, onEditingChanged: { data in
                                        MPVolumeView.setVolume(self.volumeSlider)
                                    })
                                        .accentColor(.gray)
                                    
                                    Image(systemName: "speaker.wave.2.fill")
                                        .font(.system(size: 12))
                                        .foregroundStyle(Color(uiColor: .systemGray5))
                                }
                                HStack{
                                    Spacer()
                                    Image(systemName: "quote.bubble")
                                        .font(.system(size: 24))
                                    Spacer()
                                    Image(systemName: "airplayaudio")
                                        .font(.system(size: 24))
                                    
                                    Spacer()
                                    Image(systemName: "list.bullet")
                                        .font(.system(size: 24))
                                    
                                    Spacer()
                                    
                                }
                                .foregroundStyle(Color(uiColor: .systemGray3))

                            }
                            .padding(.vertical, 10)
                            .padding(.horizontal, 30)
                        }
                        
                        
                        
                        
                    }
                    .frame(maxHeight: .infinity)
                    .padding(.bottom, 35)
                    
                }
                .frame(maxHeight: fullHeight)
                .frame(maxWidth: .infinity)
                .background(
                    ZStack{
                        Rectangle()
                            .frame(height: fullHeight)
                            .foregroundColor(.white)
                        Image(searchText.searchResult.image).resizable().blur(radius: 50)
                    }
                        .cornerRadius(30)
                )
                .transition(.move(edge: .bottom))
            }
        }
        .offset(y: (fullHeight-curHeight))
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
        .animation(.easeInOut)
    }
    @State private var prevDrugTranslations = CGSize.zero
    
    var dragGesture: some Gesture {
        DragGesture(minimumDistance: 0, coordinateSpace: .global)
            .onChanged { val in
                let dragAmount = val.translation.height - prevDrugTranslations.height
                if curHeight <= fullHeight {
                curHeight -= dragAmount
                    prevDrugTranslations = val.translation
                }
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
    
    func startTimer() {
        slayderTimer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true){ tempTimer in
            if timerSlider <= searchText.searchResult.compositionDuration {
                timerSlider += 1
                
            } else {
                slayderTimer?.invalidate()
                slayderTimer = nil
                playerPresenter.isPlayButtonPressed = false
                
            }
        }
      }
    
    func stopTimer() {
        slayderTimer?.invalidate()
        slayderTimer = nil
      }
    func timeConverter (time: Int) -> String {
        let timeWithoutMilisec = time / 100
        let minutes = Int(timeWithoutMilisec) / 60 % 60
        let seconds = Int(timeWithoutMilisec) % 60
        return String(format:"%02i:%02i", minutes, seconds)
    }
}

extension MPVolumeView {
    static func setVolume(_ volume: Float) {
        let volumeView = MPVolumeView()
        let slider = volumeView.subviews.first(where: { $0 is UISlider }) as? UISlider

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.01) {
            slider?.value = volume
        }
    }
}

//struct FullScreenPlayer_Previews: PreviewProvider {
//    static var previews: some View {
//        FullScreenPlayer(isPresented: .constant(false))
//    }
//}
