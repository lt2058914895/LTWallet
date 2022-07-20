//
//  HeaderView.swift
//  LTWallet
//
//  Created by lt on 2022/7/19.
//

import SwiftUI

struct HeaderView: View {
    
    @ObservedObject var homeViewModel : HomeViewModel

    var body: some View {
        VStack {
            //avatar
            LTAvator(avator: $homeViewModel.homeModel.avator)
            
            //nick name
            Text("\(homeViewModel.homeModel.nickName)")
            
            //wallet address
            Text("\(homeViewModel.homeModel.walletAdress)")
                .font(.system(size: 12))
                .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
                .truncationMode(.middle)
                .frame(width: 200, height: 35, alignment: .center)
                .background(.regularMaterial)
                .cornerRadius(18)
        }
    }
}
