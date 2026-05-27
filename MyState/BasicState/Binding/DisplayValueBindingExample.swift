import SwiftUI

struct DisplayValueBindingParentView: View {
    @State private var followerCount = 0

    var body: some View {
        VStack(spacing: 24) {
            Text("Parent เก็บข้อมูลด้วย @State")
                .foregroundStyle(.white)
                .font(.headline)

            DisplayValueBindingChildView(followerCount: $followerCount)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(.red)
        )
        .padding(.horizontal)
    }
}

private struct DisplayValueBindingChildView: View {
    @Binding var followerCount: Int

    var body: some View {
        VStack(spacing: 16) {
            Text("รับ Binding จาก Parent")
                .font(.headline)
            
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 1)
                .foregroundStyle(.white)
                .padding(.horizontal)
            
            Text("ผู้ติดตาม \(followerCount) คน")
                .font(.largeTitle)
                .bold()

            HStack(spacing: 8) {
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
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(.yellow)
        )
    }
}

#Preview {
    DisplayValueBindingParentView()
}
