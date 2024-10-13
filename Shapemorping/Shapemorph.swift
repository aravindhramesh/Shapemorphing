//
//  Shapemorph.swift
//  Shapemorping
//
//  Created by Aravindh Ramesh on 13/10/2024.
//

import SwiftUI

struct morph: View {
    @State private var isAnimate = true
    var body: some View {
       
        RoundedRectangle(cornerRadius: isAnimate ? 25.0 : 5000.0)
            .frame(width: 300,height: 300)
            .onTapGesture {
                withAnimation(.smooth(duration: 0.5)) {
                    isAnimate.toggle()
                               }
            }
        
    }
}


