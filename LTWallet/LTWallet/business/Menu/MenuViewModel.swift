//
//  MenuViewModel.swift
//  LTWallet
//
//  Created by lt on 2022/7/20.
//

import Foundation

class MenuViewModel: ObservableObject {
    @Published
    var menuModel = MenuModel(logoIcon: "bahtsign.square.fill",
                              logoName: "L T W A L L E T",
                              avator: "film.fill",
                              nickName: "Account1",
                              walletAdress: "ZDctODY4MC04M2Q5Y2UyM2IyNjciLCJhaWQi",
                              tradingItems: [
                                TrandingItems(image: "arrow.up.right", text: "发送"),
                                TrandingItems(image: "arrow.down.to.line.compact", text: "充值")
                              ],
                              settings: [
                                SettingItems(image: "globe.europe.africa.fill", text: "浏览器"),
                                SettingItems(image: "wallet.pass", text: "钱包"),
                                SettingItems(image: "pencil.circle", text: "活动"),
                                SettingItems(image: "arrowshape.turn.up.forward", text: "共享我的公共地址"),
                                SettingItems(image: "square.and.arrow.down.on.square", text: "在Etherscan上查看"),
                                SettingItems(image: "gearshape", text: "设置"),
                                SettingItems(image: "lasso.and.sparkles", text: "获取帮助"),
                                SettingItems(image: "bubble.left", text: "请求功能"),
                                SettingItems(image: "rectangle.portrait.and.arrow.right", text: "注销")
                                        ]
    )
}
