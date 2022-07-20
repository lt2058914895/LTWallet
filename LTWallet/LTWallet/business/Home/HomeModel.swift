//
//  HomeModel.swift
//  LTWallet
//
//  Created by lt on 2022/7/20.
//

import Foundation

struct TradingItems: Identifiable {
    let id = UUID()
    var image: String
    var text: String
}

struct HomeModel {
    var avator: String
    var nickName: String
    var walletAdress: String
    var tradings: [TradingItems]
}
