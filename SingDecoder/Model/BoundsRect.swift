//
//  BoundsRect.swift
//  SingDecoder
//
//  Created by Станислав Леонов on 29.07.2025.
//

import Foundation
import SwiftUI
import Vision

struct BoundsRect: Shape {
    let normalizedRect: NormalizedRect


    func path(in rect: CGRect) -> Path {
        let imageCoordinatesRect = normalizedRect.toImageCoordinates(rect.size, origin: .upperLeft)
        return Path(imageCoordinatesRect)
    }
}
