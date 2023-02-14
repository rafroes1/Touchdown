//
//  ContentView.swift
//  Touchdown
//
//  Created by Rafael Carvalho on 14/02/23.
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
                    .background(.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing: 0){
                        FeaturedTabView()
                            .frame(height: UIScreen.main.bounds.width / 1.65)
                            .padding(.vertical)
                        
                        CategoryGridView()
                        
                        TitleView(title: "Helmets")
                        
                        LazyVGrid(columns: gridLayout, spacing: 15, content: {
                            ForEach(products) { product in
                                ProductItemView(product: product)
                            }
                        })
                        .padding(15)
                        
                        FooterView()
                            .padding(.horizontal)
                            .padding(.vertical)
                    }//:VSTACK
                })//:SCROLLVIEW
            }//:VSTACK
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }//:ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
