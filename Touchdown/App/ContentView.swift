//
//  ContentView.swift
//  Touchdown
//
//  Created by Jersy Fernandes on 05/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0) {
                            FeaturedTabView()
                                .padding(.vertical)
                                .frame(height: UIScreen.main.bounds.width / 1.475)
                            
                            CategoryGridView()
                            
                            TitleView(title: "Helmets")
                            
                            LazyVGrid(columns: gridLayout, spacing:  15, content: {
                                ForEach(products) {
                                    product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                }
                            })
                            .padding(15)
                            
                            TitleView(title: "Brands")
                            
                            BrandGridView()
                            
                            
                            FooterView()
                                .padding(.horizontal)
                        }
                    })
                    
                 
                
                }
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
               ProductDetailView()
            }
        }
        .ignoresSafeArea(.all, edges: .top)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
