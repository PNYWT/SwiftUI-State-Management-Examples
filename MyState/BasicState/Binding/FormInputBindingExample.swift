import SwiftUI

struct FormInputBindingParentView: View {
    @State private var fullName = ""
    @State private var email = ""

    var body: some View {
        Form {
            Section("Parent ถือค่าฟอร์ม") {
                FormInputBindingChildView(fullName: $fullName, email: $email)
            }

            Section("Preview") {
                LabeledContent("ชื่อ", value: fullName.isEmpty ? "-" : fullName)
                LabeledContent("อีเมล", value: email.isEmpty ? "-" : email)
            }
        }
    }
}

private struct FormInputBindingChildView: View {
    @Binding var fullName: String
    @Binding var email: String

    var body: some View {
        TextField("ชื่อ - นามสกุล", text: $fullName)
        TextField("อีเมล", text: $email)
            .textInputAutocapitalization(.never)
            .keyboardType(.emailAddress)
    }
}

#Preview {
    FormInputBindingParentView()
}
