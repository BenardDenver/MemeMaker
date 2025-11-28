//
//  ContentView.swift
//  MemeMaker
//
//  Created by Benard Chiherenge on 27/11/2025.
//

import SwiftUI

struct ContentView: View {
    //caption
    @State var topCaption: String = ""
    @State var bottomCaption: String = ""
    
    //segment selection
    @State var topSegmentSelection: Int = 0
    @State var bottomSegmentSelection: Int = 0
    
    //position trackers
    @State private var topCaptionPosition: CGSize = .zero
    @State private var bottomCaptionPosition: CGSize = .zero
    
    @State private var topLastDragPosition: CGSize = .zero
    @State private var bottomLastDragPosition: CGSize = .zero
    
    
    var body: some View {
        Text("Memes").font(.largeTitle)
            .bold()
        
        VStack(spacing: 25) {
            //top choice
            
            Picker("topCaption", selection: $topSegmentSelection){
                ForEach(0..<topChoice.count, id: \.self) { index in
                    Text(topChoice[index].emoji).tag(index)
                }
            }
            .pickerStyle(.segmented)
            .onAppear(){
                updateTopCaption()
            }
            .onChange(of: topSegmentSelection, updateTopCaption)
            
            //picture and captions
            ZStack{
                Image("cow")
                    .resizable()
                    .frame(width: 370, height: 370)
                VStack{
                    Text(topCaption)
                        .font(.title2)
                        .foregroundStyle(.white)
                        .bold()
                        .shadow(radius: 10)
                        .offset(y: -90)
                        .offset(x: topCaptionPosition.width, y: topCaptionPosition.height)

                        .gesture(
                            DragGesture()
                                .onChanged { value in
                                    topCaptionPosition = CGSize(
                                        width: topLastDragPosition.width + value.translation.width,
                                        height: topLastDragPosition.height + value.translation.height
                                    )
                                }
                                .onEnded { _ in
                                    topLastDragPosition = topCaptionPosition
                                }
                        )
                    
                    
                    Text(bottomCaption)
                        .font(.title2)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.white)
                        .bold()
                        .shadow(radius: 10)
                        .offset(y: 90)
                        .offset(x: bottomCaptionPosition.width, y: bottomCaptionPosition.height)
                        .gesture(
                            DragGesture()
                                .onChanged { value in
                                    bottomCaptionPosition = CGSize(
                                        width: bottomLastDragPosition.width + value.translation.width,
                                        height: bottomLastDragPosition.height + value.translation.height
                                    )
                                }
                                .onEnded { _ in
                                    bottomLastDragPosition = bottomCaptionPosition
                                }
                        )
                    
                }
            }
            
            //bottom choice
            Picker("bottomCaption", selection: $bottomSegmentSelection){
                ForEach(0..<bottomChoice.count, id: \.self) { index in
                    Text(bottomChoice[index].emoji).tag(index)
                }
            }
            .pickerStyle(.segmented)
            .onAppear(){
                updateBottomCaption()
            }
            .onChange(of: bottomSegmentSelection, updateBottomCaption)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
