//
//  NavigationBarView.swift
//  IKEAStore
//
//  Created by Josipa Puljko on 10.12.2021..
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        HStack {
            
//            TODO: REMOVE PLACEHOLDER AND ADD LOGO
            Text("IKEA Logo")
                .font(.title)
            
            Spacer()
            
            Button(action: {}, label: {
                    Image(systemName: "location")
                        .font(.title)
                        .foregroundColor(.black)
            })
            
            Button(action: {}, label: {
                    Image(systemName: "person.crop.circle")
                        .font(.title)
                        .foregroundColor(.black)
            })
            
            Button(action: {}, label: {
                    Image(systemName: "heart")
                        .font(.title)
                        .foregroundColor(.black)
            })
            
            Button(action: {}, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }
            })
        }
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}