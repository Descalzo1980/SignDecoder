//
//  TrailTheme.swift
//  SingDecoder
//
//  Created by Станислав Леонов on 29.07.2025.
//

import SwiftUI

struct TrailTheme: ViewModifier {
    func body(content: Content) -> some View {
        ZStack {
            VStack {
                Image(.background)
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .frame(maxHeight: 250, alignment: .top)
                Spacer()
            }
            content
        }
    }
}

extension View {
    func trailTheme() -> some View {
        modifier(TrailTheme())
    }
}
