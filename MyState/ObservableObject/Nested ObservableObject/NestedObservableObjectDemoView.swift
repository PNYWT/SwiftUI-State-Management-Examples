//
//  NestedObservableObjectDemoView.swift
//  MyState
//
//  Created by Punyawat on 29/5/2569 BE.
//

import SwiftUI
import Combine

struct NestedObservableObjectDemoView: View {
    @StateObject private var userSessionVM = UserSessionViewModel()
    
    var body: some View {
        VStack(spacing: 16) {
            List(userSessionVM.cart.items) { item in
                HStack {
                    Text(item.id.uuidString)
                    Spacer()
                    Text(item.name)
                }
            }
            
            Button("Add Item") {
                userSessionVM.cart.addItem()
                print("Update session.cart -> \(userSessionVM.cart.items.count)")
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    NestedObservableObjectDemoView()
}
