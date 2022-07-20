//
//  MenuModel.swift
//  LTWallet
//
//  Created by lt on 2022/7/20.
//

import Foundation


struct TrandingItems: Identifiable {
    let id = UUID()
    var image: String
    var text: String
}

struct SettingItems: Identifiable {
    let id = UUID()
    var image: String
    var text: String
}

struct MenuModel {
    var logoIcon: String
    var logoName: String
    var avator: String
    var nickName: String
    var walletAdress: String
    var tradingItems: [TrandingItems]
    var settings: [SettingItems]
}
