//
//  ContentView.swift
//  MyState
//
//  Created by Punyawat on 27/5/2569 BE.
//

import SwiftUI

struct ContentView: View {
    private let sections: [DemoSection] = [
        DemoSection(
            title: "BasicState",
            subtitle: "ตัวอย่างพื้นฐานของ @State และ @Binding",
            demos: [
                Demo(
                    title: "ค่าที่ใช้แสดงผลบนหน้าจอ",
                    subtitle: "ใช้ @State เก็บค่าที่แสดงผลและอัปเดต UI ทันที",
                    destination: AnyView(DisplayValueStateView())
                ),
                Demo(
                    title: "Loading State",
                    subtitle: "ควบคุมสถานะกำลังโหลดและผลลัพธ์ที่ได้รับ",
                    destination: AnyView(LoadingStateView())
                ),
                Demo(
                    title: "Form Input",
                    subtitle: "ผูกค่าจาก TextField และ Stepper เข้ากับ @State",
                    destination: AnyView(FormInputStateView())
                ),
                Demo(
                    title: "Selected Item",
                    subtitle: "เก็บรายการที่ผู้ใช้เลือกอยู่ใน View",
                    destination: AnyView(SelectedItemStateView())
                ),
                Demo(
                    title: "Toggle State",
                    subtitle: "สลับการตั้งค่าด้วย @State และ Toggle",
                    destination: AnyView(ToggleStateView())
                ),
                Demo(
                    title: "Navigation State",
                    subtitle: "ใช้ @State ควบคุมปลายทางใน NavigationStack",
                    destination: AnyView(NavigationStateView())
                )
            ]
        ),
        DemoSection(
            title: "ObservableObject",
            subtitle: "ทำความรู้จัก ViewModel, owner และ observer",
            demos: [
                Demo(
                    title: "@StateObject คืออะไร",
                    subtitle: "ใช้เมื่อ View เป็น owner และสร้าง ViewModel เอง",
                    destination: AnyView(CounterStateObjectView())
                ),
                Demo(
                    title: "@ObservedObject คืออะไร",
                    subtitle: "ใช้เมื่อ View รับ ViewModel จากภายนอกมา observe",
                    destination: AnyView(CounterObservedObjectView())
                )
            ]
        )
    ]

    var body: some View {
        NavigationStack {
            List {
                ForEach(sections) { section in
                    Section {
                        ForEach(section.demos) { demo in
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
                    } header: {
                        VStack(alignment: .leading, spacing: 4) {
                            Text(section.title)
                            Text(section.subtitle)
                                .font(.footnote)
                                .foregroundStyle(.secondary)
                        }
                        .textCase(nil)
                    }
                }
            }
            .navigationTitle("State Management")
        }
    }
}

private struct DemoSection: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let demos: [Demo]
}

private struct Demo: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let destination: AnyView
}

#Preview {
    ContentView()
}
