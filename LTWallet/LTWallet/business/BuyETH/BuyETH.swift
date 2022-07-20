//
//  BuyETH.swift
//  LTWallet
//
//  Created by lt on 2022/7/20.
//

import SwiftUI

struct BuyETH: View {
    @ObservedObject var ethViewModel : EthViewModel
    @State private var ethType = ""
    @State private var amount = ""
    @State private var buySucess = false
    @Environment(\.dismiss) var dismiss
    
    private var invalidInput : Bool {
        ethType.isEmpty || amount.isEmpty
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section("选择您想购买的币种") {
                        TextField("选择您想购买的币种", text: $ethType)
                    }
                    Section("金额") {
                        TextField("请输入金额", text: $amount)
                            .keyboardType(.numberPad)
                    }
                }
                Button("购买") {
                    buySucess = true
                    ethViewModel.addItem(item: EthModelItem(ethType: ethType, amount: amount))
                   //模拟网络请求
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        dismiss()
                    }
                }
                .foregroundColor(.white)
                .frame(width: UIScreen.main.bounds.width*0.7, height: 44, alignment: .center)
                .background(invalidInput ? .gray : .blue)
                .cornerRadius(22)
                .disabled(invalidInput)
                Spacer()
            }
            .navigationTitle("购买比特币")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "arrow.left")
                    }
                }
            }
            .toast(isPresenting: $buySucess, text: "购买成功！")
        }
    }
}
