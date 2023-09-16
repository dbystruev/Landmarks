//
//  Badge.swift
//  Landmarks
//
//  Created by Denis Bystruev on 9/16/23.
//

import SwiftUI

struct Badge: View {
    var badgeSymbols: some View {
        ForEach(0 ..< 8) { index in
            RotatedBadgeSymbol(
                angle: .degrees(Double(index) / 8) * 360
            )
        }
        .opacity(0.5)
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
            
            GeometryReader { geometry in
                badgeSymbols
                    .scaleEffect(0.25, anchor: .top)
                    .position(x: geometry.size.width / 2, y: 3 * geometry.size.height / 4)
            }
        }
        .scaledToFit()
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
