//
//  MenuHeaderView.swift
//  LTWallet
//
//  Created by lt on 2022/7/19.
//

import SwiftUI

struct MenuHeaderView: View {
    
    @ObservedObject var menuViewModel : MenuViewModel

    var body: some View {
        HStack {
            VStack(spacing: 10, content: {
                HStack {
                    Image(systemName: "\(menuViewModel.menuModel.logoIcon)")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 24, height: 24)
                    Text("\(menuViewModel.menuModel.logoName)")
                }
                .padding(EdgeInsets(top: 64, leading: 0, bottom: 20, trailing: 0))
                VStack(spacing: 10) {
                    //avatar
                    LTAvator(avator: $menuViewModel.menuModel.avator)
                    
                    //nick name
                    Text("\(menuViewModel.menuModel.nickName)")
                    
                    //wallet address
                    Text("\(menuViewModel.menuModel.walletAdress)")
                        .font(.system(size: 12))
                        .foregroundColor(.secondary)
                        .truncationMode(.middle)
                        .frame(width: 150, height: 24, alignment: .leading)
                }
            })
                .padding(10)
            Spacer()
        }
    }
}
