//
//  Menu.swift
//  LTWallet
//
//  Created by lt on 2022/7/19.
//

import SwiftUI

struct Menu: View {
    
    @ObservedObject var menuViewModel : MenuViewModel
    @Binding var size : CGFloat

    var body: some View {
        HStack {
            VStack {
                MenuHeaderView(menuViewModel: menuViewModel)
                Divider()
                
                MenuTradingView(menuViewModel: menuViewModel)
                Divider()
                
                List {
                    ForEach(menuViewModel.menuModel.settings) { settingItem in
                        MenuListItem(settingItems: settingItem)
                    }
                    .listRowSeparator(.hidden)
                }
                .listStyle(.plain)
            }
            .frame(width: UIScreen.main.bounds.width*0.7, height: UIScreen.main.bounds.height, alignment: .leading)
            .background(.white)
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .leading)
    }
}
