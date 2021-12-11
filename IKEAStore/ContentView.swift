//
//  ContentView.swift
//  IKEAStore
//
//  Created by Josipa Puljko on 09.12.2021..
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                CategoryGridView()
                
                Spacer()
                
                FooterView()
                    .padding(.horizontal)
            }
        }
        .ignoresSafeArea(.all, edges: .top)
//        TODO: FIX BACKGROUND - TURN IT INTO A LIGHT GRAY
//        .background(Color.gray.ignoresSafeArea(.all, edges: .all))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
