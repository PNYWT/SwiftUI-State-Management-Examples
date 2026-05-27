//
//  ToggleStateView.swift
//  MyState
//
//  Created by Punyawat on 27/5/2569 BE.
//

import SwiftUI

struct ToggleStateView: View {
    @State private var isNotificationEnabled = true

    var body: some View {
        VStack(spacing: 20) {
            Toggle("เปิดการแจ้งเตือน", isOn: $isNotificationEnabled)
                .toggleStyle(.switch)

            Text(isNotificationEnabled ? "สถานะ: เปิดอยู่" : "สถานะ: ปิดอยู่")
                .font(.title3.weight(.medium))
                .foregroundStyle(isNotificationEnabled ? .green : .red)

            Text("เหมาะกับค่าประเภท true / false เช่น การตั้งค่าและสิทธิ์การใช้งาน")
                .font(.footnote)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}

#Preview {
    ToggleStateView()
}
