import SwiftUI

struct ToggleBindingParentView: View {
    @State private var isNotificationEnabled = true

    var body: some View {
        VStack(spacing: 20) {
            ToggleBindingChildView(isNotificationEnabled: $isNotificationEnabled)

            Text(isNotificationEnabled ? "สถานะปัจจุบัน: เปิด" : "สถานะปัจจุบัน: ปิด")
                .foregroundStyle(isNotificationEnabled ? .green : .red)
        }
        .padding()
    }
}

private struct ToggleBindingChildView: View {
    @Binding var isNotificationEnabled: Bool

    var body: some View {
        Toggle("เปิดการแจ้งเตือน", isOn: $isNotificationEnabled)
            .toggleStyle(.switch)
    }
}

#Preview {
    ToggleBindingParentView()
}
