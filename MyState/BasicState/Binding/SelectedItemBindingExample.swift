import SwiftUI

struct SelectedItemBindingParentView: View {
    @State private var selectedCategory = "SwiftUI"
    private let categories = ["SwiftUI", "UIKit", "Combine", "Concurrency"]

    var body: some View {
        VStack(spacing: 20) {
            Text("หัวข้อที่เลือก: \(selectedCategory)")
                .font(.title3.weight(.semibold))

            SelectedItemBindingChildView(
                categories: categories,
                selectedCategory: $selectedCategory
            )
        }
        .padding()
    }
}

private struct SelectedItemBindingChildView: View {
    let categories: [String]
    @Binding var selectedCategory: String

    var body: some View {
        VStack(spacing: 12) {
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
    }
}

#Preview {
    SelectedItemBindingParentView()
}
