//
//  Shop.swift
//  Touchdown
//
//  Created by Jersy Fernandes on 06/09/2022.
//

import Foundation

class Shop: ObservableObject{
   @Published var showingProduct: Bool = false
   @Published var selectedProduct: Product? = nil
}
