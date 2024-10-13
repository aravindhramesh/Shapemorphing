//
//  ShapeView.swift
//  Thoughts
//
//  Created by Aravindh Ramesh on 12/10/2024.
//

import SwiftUI

struct ShapeView: View {
    @State private var currentShape: Shape = .circle
    
    var body: some View {
        currentShape.view(color: .blue)
        //            .frame(width: 200, height: 200)
            .onTapGesture {
                withAnimation(.smooth(duration: 0.5)) {
                                   changeShape()
                               }
            }
    }
    private func changeShape() {
        let shapes = Shape.allCases
        if let currentIndex = shapes.firstIndex(of: currentShape){
            //               let nextShape = shapes[currentIndex + 1] {
            currentShape = shapes[safe: currentIndex+1] ?? shapes[0]
        } else {
            currentShape = shapes[0]
        }
    }
    
    
}
extension Array {
    subscript(safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

