//
//  MenuListItem.swift
//  LTWallet
//
//  Created by lt on 2022/7/20.
//

import SwiftUI

struct MenuListItem: View {
    
    var settingItems : SettingItems

    var body: some View {
        HStack(alignment: .center, spacing: 20, content: {
            Image(systemName: "\(settingItems.image)")
                .resizable().scaledToFill()
                .frame(width: 24, height: 24, alignment: .leading)
            Text("$\(settingItems.text)")
                .font(.system(size: 14))
                .foregroundColor(.secondary)
        })
    }
}
