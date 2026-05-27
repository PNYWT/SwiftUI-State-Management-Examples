//
//  DisplayValueStateView.swift
//  MyState
//
//  Created by Punyawat on 27/5/2569 BE.
//

import SwiftUI

struct DisplayValueStateView: View {
    @State private var followerCount = 0

    var body: some View {
        VStack(spacing: 20) {
            Text("จำนวนผู้ติดตาม")
                .font(.headline)

            Text("\(followerCount)")
                .font(.system(size: 42, weight: .bold, design: .rounded))
                .foregroundStyle(.blue)

            HStack(alignment: .center, spacing: 16) {
                Button {
                    followerCount -= 1
                } label: {
                    Text("ลด")
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button {
                    followerCount += 1
                } label: {
                    Text("เพิ่ม")
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .tint(.blue)
            }
        }
        .padding()
    }
}

#Preview {
    DisplayValueStateView()
}
