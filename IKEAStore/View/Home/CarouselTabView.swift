//
//  CarouselTabView.swift
//  IKEAStore
//
//  Created by Josipa Puljko
//

import SwiftUI

struct CarouselTabView: View {
    var body: some View {
        TabView {
            ForEach(livingrooms) { livingroom in
                CarouselView(livingroom: livingroom)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct CarouselTabView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselTabView()
    }
}
