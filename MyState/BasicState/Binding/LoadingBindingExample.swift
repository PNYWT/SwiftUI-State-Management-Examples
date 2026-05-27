import SwiftUI

struct LoadingBindingParentView: View {
    @State private var isLoading = false
    @State private var message = "ยังไม่ได้โหลดข้อมูล"

    var body: some View {
        VStack(spacing: 24) {
            Text(message)
                .font(.title3.weight(.semibold))
                .multilineTextAlignment(.center)

            LoadingBindingChildView(isLoading: $isLoading, message: $message)
        }
        .padding()
    }
}

private struct LoadingBindingChildView: View {
    @Binding var isLoading: Bool
    @Binding var message: String

    var body: some View {
        VStack(spacing: 16) {
            if isLoading {
                ProgressView("กำลังโหลด...")
            }

            Button(isLoading ? "กำลังโหลด..." : "เริ่มโหลดข้อมูล") {
                loadData()
            }
            .buttonStyle(.borderedProminent)
            .disabled(isLoading)
        }
    }

    private func loadData() {
        isLoading = true
        message = "กำลังดึงข้อมูลจากเซิร์ฟเวอร์"

        Task {
            try? await Task.sleep(for: .seconds(1.5))
            message = "โหลดบทความสำเร็จแล้ว"
            isLoading = false
        }
    }
}

#Preview {
    LoadingBindingParentView()
}
