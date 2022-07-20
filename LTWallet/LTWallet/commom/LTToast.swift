//
//  LTToast.swift
//  LTWallet
//
//  Created by lt on 2022/7/20.
//

import SwiftUI

extension View {
    public func toast(isPresenting: Binding<Bool>, text: String) -> some View {
        modifier(LTToast(isPresent: isPresenting, text: text))
    }
}

struct LTToast: ViewModifier {
    @Binding var isPresent: Bool
    var text: String
    
    func body(content: Content) -> some View {
        ZStack {
            content
            if isPresent {
                Text("\(text)")
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            isPresent = false
                        }
                    }
            }
        }
    }
}
