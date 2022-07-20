//
//  LTAvator.swift
//  LTWallet
//
//  Created by lt on 2022/7/20.
//

import SwiftUI

struct LTAvator: View {
    @Binding var avator: String
    
    var body: some View {
        Button {
            
        } label: {
            Image(systemName: "\(avator)")
                .resizable()
                .scaledToFill()
                .frame(width: 44, height: 44)
        }
        .clipShape(Circle())
        .padding(2)
        .background(.white)
        .clipShape(Circle())
        .padding(2)
        .background(.blue)
        .clipShape(Circle())
    }
}

