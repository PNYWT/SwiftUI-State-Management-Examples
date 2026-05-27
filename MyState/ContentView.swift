//
//  ContentView.swift
//  MyState
//
//  Created by Punyawat on 27/5/2569 BE.
//

import SwiftUI

struct ContentView: View {
    private let demos: [StateDemo] = [
        StateDemo(
            title: "ค่าที่ใช้แสดงผลบนหน้าจอ",
            subtitle: "ใช้ @State เก็บค่าที่แสดงผลและอัปเดต UI ทันที",
            destination: AnyView(DisplayValueStateView())
        ),
        StateDemo(
            title: "Loading State",
            subtitle: "ควบคุมสถานะกำลังโหลดและผลลัพธ์ที่ได้รับ",
            destination: AnyView(LoadingStateView())
        ),
        StateDemo(
            title: "Form Input",
            subtitle: "ผูกค่าจาก TextField และ Stepper เข้ากับ @State",
            destination: AnyView(FormInputStateView())
        ),
        StateDemo(
            title: "Selected Item",
            subtitle: "เก็บรายการที่ผู้ใช้เลือกอยู่ใน View",
            destination: AnyView(SelectedItemStateView())
        ),
        StateDemo(
            title: "Toggle State",
            subtitle: "สลับการตั้งค่าด้วย @State และ Toggle",
            destination: AnyView(ToggleStateView())
        ),
        StateDemo(
            title: "Navigation State",
            subtitle: "ใช้ @State ควบคุมปลายทางใน NavigationStack",
            destination: AnyView(NavigationStateView())
        )
    ]

    var body: some View {
        NavigationStack {
            List(demos) { demo in
                NavigationLink {
                    demo.destination
                        .navigationTitle(demo.title)
                        .navigationBarTitleDisplayMode(.inline)
                } label: {
                    VStack(alignment: .leading, spacing: 4) {
                        Text(demo.title)
                            .font(.headline)
                        Text(demo.subtitle)
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                    .padding(.vertical, 4)
                }
            }
            .navigationTitle("@State Examples")
        }
    }
}

private struct StateDemo: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let destination: AnyView
}

#Preview {
    ContentView()
}
