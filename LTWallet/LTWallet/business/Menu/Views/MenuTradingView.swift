//
//  MenuTradingView.swift
//  LTWallet
//
//  Created by lt on 2022/7/19.
//

import SwiftUI

//交易按钮
struct MenuTradingView: View {
    
    @ObservedObject var menuViewModel : MenuViewModel

    private var itemWidth: CGFloat {
        (UIScreen.main.bounds.width*0.7 - 60)/2
    }
    
    var body: some View {
        HStack {
            ForEach (menuViewModel.menuModel.tradingItems) { tradingItem in
                Button {
                    
                } label: {
                    Image(systemName: "\(tradingItem.image)")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 16, height: 16)
                    Text("\(tradingItem.text)")
                        .font(.system(size: 16))
                }
                .frame(width: itemWidth, height: 44, alignment: .center)
                .cornerRadius(22)
                .overlay(
                    RoundedRectangle(cornerRadius: 22, style: .continuous)
                         .stroke(.blue, lineWidth: 2)
            )}
        }
        .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
    }
}
