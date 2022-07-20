//
//  EthViewModel.swift
//  LTWallet
//
//  Created by lt on 2022/7/20.
//

import Foundation

class EthViewModel: ObservableObject {
    @Published //向外发布，其它地方有人订阅他的变化，一旦变化则刷新相关试图--State升级版
    var ethModelItems = [
        EthModelItem(ethType: "ETH", amount: "100"),
        EthModelItem(ethType: "USDC", amount: "300"),
        EthModelItem(ethType: "USDT", amount: "500")
    ]
    
    func addItem(item: EthModelItem) {
        ethModelItems.append(item)
    }
    
    func deleteItem(indexSet: IndexSet) {
        ethModelItems.remove(atOffsets: indexSet)
    }
}
