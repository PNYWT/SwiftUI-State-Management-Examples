//
//  ViewModel.swift
//  MyState
//
//  Created by Punyawat on 29/5/2569 BE.
//

import Foundation
import Combine

final class CartViewModel: ObservableObject {
    @Published var items: [CartItem] = [
        CartItem(name: "Keyboard"),
        CartItem(name: "Mouse")
    ]
    
    func addItem() {
        items.append(CartItem(name: "USB-C Cable"))
    }
}

final class UserSessionViewModel: ObservableObject {
    @Published var cart: CartViewModel = CartViewModel()
}
