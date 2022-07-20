//
//  Home.swift
//  LTWallet
//
//  Created by lt on 2022/7/19.
//

import SwiftUI

struct Home: View {
    @StateObject var homeViewModel = HomeViewModel()
    @StateObject var menuViewModel = MenuViewModel()
    @StateObject var ethViewModel = EthViewModel()
    @State var size = UIScreen.main.bounds.width
    @State private var buyETHShow = false
    
    var body: some View {
        ZStack {
            NavigationView {
                VStack {
                    HeaderView(homeViewModel: homeViewModel)
                    TradingView(homeViewModel: homeViewModel)
                    List {
                        ForEach(ethViewModel.ethModelItems) { ethItem in
                            HStack {
                                Text(ethItem.ethType)
                                Spacer()
                                Text("\(ethItem.amount)")
                                    .foregroundColor(.secondary)
                            }
                        }
                        .onDelete { indexSet in
                            ethViewModel.deleteItem(indexSet: indexSet)
                        }
                    }
                    .listStyle(.plain)
                }
                .navigationTitle("Wallet")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            self.size = 0
                        } label: {
                            Image(systemName: "line.3.horizontal")
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            buyETHShow = true
                        } label: {
                            Image(systemName: "bahtsign.circle")
                        }
                    }
                }
                .fullScreenCover(isPresented: $buyETHShow, content: {
                    BuyETH(ethViewModel: ethViewModel)
                })
            }
            //TranslucenceView
            TranslucenceView(size: $size)
                .onTapGesture {
                    self.size = UIScreen.main.bounds.width
                }
                .gesture(DragGesture().onChanged({ value in
                    self.size = value.translation.width

                }).onChanged({ _ in
                    self.size = UIScreen.main.bounds.width
                }))
            //menu
            Menu(menuViewModel: menuViewModel, size: $size)
                .offset(x: -size)
        }
    }
}
