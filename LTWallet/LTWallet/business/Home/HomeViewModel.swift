//
//  HomeViewModel.swift
//  LTWallet
//
//  Created by lt on 2022/7/20.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published
    var homeModel = HomeModel(avator: "film.fill",
                              nickName: "Account1",
                              walletAdress: "ZDctODY4MC04M2Q5Y2UyM2IyNjciLCJhaWQi",
                              tradings: [
                                TradingItems(image: "arrow.down.to.line.circle.fill", text: "接收"),
                                TradingItems(image: "creditcard.circle.fill", text: "购买"),
                                TradingItems(image: "arrow.up.right.circle.fill", text: "发送"),
                                TradingItems(image: "repeat.circle.fill", text: "交换")
                                        ]
    )
}

