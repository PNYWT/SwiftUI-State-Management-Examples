//
//  SelectedItemStateView.swift
//  MyState
//
//  Created by Punyawat on 27/5/2569 BE.
//

import SwiftUI

struct SelectedItemStateView: View {
    @State private var selectedCategory = "SwiftUI"

    private let categories = ["SwiftUI", "UIKit", "Combine", "Concurrency"]

    var body: some View {
        VStack(spacing: 20) {
            Text("หัวข้อที่เลือก")
                .font(.headline)

            Text(selectedCategory)
                .font(.largeTitle.weight(.bold))
                .foregroundStyle(.orange)

            ForEach(categories, id: \.self) { category in
                Button {
                    selectedCategory = category
                } label: {
                    HStack {
                        Text(category)
                        Spacer()
                        if selectedCategory == category {
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundStyle(.green)
                        }
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 12))
                }
                .buttonStyle(.plain)
            }
        }
        .padding()
    }
}

#Preview {
    SelectedItemStateView()
}
