//
//  TradingView.swift
//  LTWallet
//
//  Created by lt on 2022/7/19.
//

import SwiftUI

//交易按钮
struct TradingView: View {
    
    @ObservedObject var homeViewModel : HomeViewModel

    var body: some View {
        HStack(alignment: .center, spacing: 20, content: {
            ForEach(homeViewModel.homeModel.tradings) { tradingItems in
                VStack {
                    Image(systemName: "\(tradingItems.image)")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 44, height: 44)
                        .foregroundColor(.blue)
                    Text("\(tradingItems.text)")
                        .foregroundColor(.blue)
                        .font(.system(size: 14))
                }
            }
        })
            .padding(10)
    }
}
