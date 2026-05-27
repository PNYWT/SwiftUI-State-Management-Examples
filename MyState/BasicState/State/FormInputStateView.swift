//
//  FormInputStateView.swift
//  MyState
//
//  Created by Punyawat on 27/5/2569 BE.
//

import SwiftUI

struct FormInputStateView: View {
    @State private var fullName = ""
    @State private var email = ""
    @State private var age = 18

    var body: some View {
        Form {
            Section("ข้อมูลผู้ใช้งาน") {
                TextField("ชื่อ - นามสกุล", text: $fullName)
                TextField("อีเมล", text: $email)
                    .textInputAutocapitalization(.never)
                    .keyboardType(.emailAddress)
                Stepper("อายุ \(age) ปี", value: $age, in: 18...80)
            }

            Section("Preview") {
                LabeledContent("ชื่อ", value: fullName.isEmpty ? "-" : fullName)
                LabeledContent("อีเมล", value: email.isEmpty ? "-" : email)
                LabeledContent("อายุ", value: "\(age)")
            }
        }
    }
}

#Preview {
    NavigationStack {
        FormInputStateView()
    }
}
