import SwiftUI

struct NavigationBindingParentView: View {
    @State private var selectedArticle: ArticleRoute?

    var body: some View {
        NavigationStack {
            NavigationBindingChildView(selectedArticle: $selectedArticle)
                .navigationTitle("Articles")
                .navigationDestination(item: $selectedArticle) { article in
                    NavigationBindingDetailView(article: article)
                }
        }
    }
}

private struct NavigationBindingChildView: View {
    @Binding var selectedArticle: ArticleRoute?

    var body: some View {
        VStack(spacing: 16) {
            Button("ไปยังบทความ SwiftUI") {
                selectedArticle = .swiftUI
            }
            .buttonStyle(.borderedProminent)

            Button("ไปยังบทความ Combine") {
                selectedArticle = .combine
            }
            .buttonStyle(.bordered)
        }
        .padding()
    }
}

private struct NavigationBindingDetailView: View {
    let article: ArticleRoute

    var body: some View {
        VStack(spacing: 12) {
            Text(article.rawValue)
                .font(.title2.weight(.bold))

            Text("child view เปลี่ยน navigation state ของ parent ผ่าน @Binding")
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}

private enum ArticleRoute: String, Identifiable {
    case swiftUI = "SwiftUI สำหรับมือใหม่"
    case combine = "Combine แบบเข้าใจง่าย"

    var id: String { rawValue }
}

#Preview {
    NavigationBindingParentView()
}
