//
//  Shape.swift
//  Shapemorphing
//
//  Created by Aravindh Ramesh on 12/10/2024.
//


import SwiftUI

enum Shape: CaseIterable {
    case circle
    case rectangle
    case square
    
    @ViewBuilder
    func view(color: Color) -> some View {
        switch self {
        case .circle:
            Circle()
                .fill(.blue)
                .padding(30)
                .shadow(radius: 30)
                .overlay(
                    Text("circle")
                        .foregroundStyle(.white)
                        .font(.title)
                        .fontDesign(.serif)
                )
        case .rectangle:
            Rectangle().fill(.orange)
                .cornerRadius(30)
                .padding(30)
                .shadow(radius: 30)
                .overlay(
                    Text("rectangle")
                        .foregroundStyle(.white)
                        .font(.title)
                        .fontDesign(.serif)
                )
        case .square:
            Rectangle().fill(.green).aspectRatio(1, contentMode: .fit).cornerRadius(30)
                .padding(30)
                .shadow(radius: 30)
                .overlay(
                    Text("square")
                        .foregroundStyle(.white)
                        .font(.title)
                        .fontDesign(.serif)
                )
        }
    }
}
