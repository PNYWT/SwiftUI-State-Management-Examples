//
//  LoadingStateView.swift
//  MyState
//
//  Created by Punyawat on 27/5/2569 BE.
//

import SwiftUI

struct LoadingStateView: View {
    @State private var isLoading = false
    @State private var articleTitle = "ยังไม่ได้โหลดข้อมูล"

    var body: some View {
        VStack(spacing: 20) {
            if isLoading {
                ProgressView("กำลังโหลดบทความ...")
            } else {
                Text(articleTitle)
                    .font(.title3.weight(.semibold))
                    .multilineTextAlignment(.center)
            }

            Button(isLoading ? "กำลังโหลด..." : "โหลดข้อมูล") {
                loadArticle()
            }
            .buttonStyle(.borderedProminent)
            .disabled(isLoading)

            Text("เหมาะกับการอธิบายสถานะระหว่างรอ API หรือประมวลผลข้อมูล")
                .font(.footnote)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
        }
        .padding()
    }

    private func loadArticle() {
        isLoading = true

        Task {
            try? await Task.sleep(for: .seconds(1.5))
            articleTitle = "SwiftUI State Management เบื้องต้น"
            isLoading = false
        }
    }
}

#Preview {
    LoadingStateView()
}
