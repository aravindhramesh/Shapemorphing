//
//  Shapemorph.swift
//  Shapemorping
//
//  Created by Aravindh Ramesh on 13/10/2024.
//

import SwiftUI

struct morph: View {
    @State private var isAnimate = false
    @State var offset: CGSize = .zero
    var body: some View {
       
        RoundedRectangle(cornerRadius: isAnimate ? 25.0 : 150.0)
            .fill(isAnimate ? .blue : .orange)
            .frame(width: 300,height: 300)
            .offset(offset)
            .gesture(
                DragGesture()
                    .onChanged {
                        value in
                        withAnimation(.spring()){
                            offset = value.translation
                    }
                    }
                    .onEnded(){
                        value in
                        withAnimation(.spring()){
                            offset = value.translation
                    }
                        
                    }
            
            )
            .onTapGesture {
                withAnimation(.smooth(duration: 0.5)) {
                    isAnimate.toggle()
                               }
            }
        
    }
}


