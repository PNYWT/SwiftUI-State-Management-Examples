//
//  NavigationStateView.swift
//  MyState
//
//  Created by Punyawat on 27/5/2569 BE.
//

import SwiftUI

private enum ArticleRoute: String, Identifiable {
    case swiftUI = "SwiftUI สำหรับมือใหม่"
    case combine = "Combine แบบเข้าใจง่าย"

    var id: String { rawValue }
}


struct NavigationStateView: View {
    @State private var selectedArticle: ArticleRoute?

    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                Button("ไปยังบทความ SwiftUI") {
                    selectedArticle = .swiftUI
                }
                .buttonStyle(.borderedProminent)

                Button("ไปยังบทความ Combine") {
                    selectedArticle = .combine
                }
                .buttonStyle(.bordered)

                Text("ใช้ @State เก็บปลายทางที่เลือก แล้วสั่ง navigation จากค่านั้น")
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)
            }
            .padding()
            .navigationTitle("Articles")
            .navigationDestination(item: $selectedArticle) { article in
                ArticleDetailView(article: article)
            }
        }
    }
}

private struct ArticleDetailView: View {
    let article: ArticleRoute

    var body: some View {
        VStack(spacing: 12) {
            Text(article.rawValue)
                .font(.title2.weight(.bold))
            Text("หน้านี้ถูกเปิดด้วย navigation state ที่เก็บไว้ใน @State")
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}

#Preview {
    NavigationStateView()
}
