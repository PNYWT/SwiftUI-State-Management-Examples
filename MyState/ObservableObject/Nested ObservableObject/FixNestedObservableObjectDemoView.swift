//
//  FixNestedObservableObjectDemoView.swift
//  MyState
//
//  Created by Punyawat on 29/5/2569 BE.
//

import SwiftUI

struct FixNestedObservableObjectDemoView: View {
    @StateObject private var userSessionVM = UserSessionViewModel()
    
    var body: some View {
        VStack(spacing: 16) {
            
            CartListView(cartVM: userSessionVM.cart)
            
            Button("Add Item") {
                userSessionVM.cart.addItem()
                print("Update session.cart -> \(userSessionVM.cart.items.count)")
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

struct CartListView: View {
    
    @ObservedObject private var cartVM: CartViewModel
    
    init(cartVM: CartViewModel) {
        self.cartVM = cartVM
    }
    
    var body: some View {
        List(cartVM.items) { item in
            HStack {
                Text(item.id.uuidString)
                Spacer()
                Text(item.name)
            }
        }
    }
}

#Preview {
    FixNestedObservableObjectDemoView()
}
