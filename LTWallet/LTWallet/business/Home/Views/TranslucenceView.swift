//
//  TranslucenceView.swift
//  LTWallet
//
//  Created by lt on 2022/7/20.
//

import SwiftUI

struct TranslucenceView: View {
    
    @Binding var size: CGFloat
    
    private var ratio : CGFloat {
        if abs(size) == UIScreen.main.bounds.width {
            return 0
        } else if abs(size) > 0 {
            return 0.2 - abs(size)/UIScreen.main.bounds.width
        } else {
            return 0.2
        }
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .fill(.black)
        }
        .background(.black)
        .opacity(ratio)
    }
}
