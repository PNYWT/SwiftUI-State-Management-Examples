import SwiftUI

struct CounterObservedObjectView: View {
    @StateObject private var viewModel = CounterViewModel()

    var body: some View {
        VStack(spacing: 20) {
            VStack(spacing: 8) {
                Text("Parent View")
                    .font(.headline)
                Text("Object ID: \(viewModel.shortInstanceID)")
                    .font(.footnote.monospaced())
                    .foregroundStyle(.secondary)
            }

            ObservedObjectChildCard(viewModel: viewModel)

            Text("child view ไม่ได้สร้าง object นี้เอง แต่รับมาจาก parent แล้ว observe ต่อด้วย `@ObservedObject`")
                .font(.footnote)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}

private struct ObservedObjectChildCard: View {
    @ObservedObject var viewModel: CounterViewModel

    var body: some View {
        VStack(spacing: 16) {
            Text("Child View")
                .font(.headline)

            Text(viewModel.title)
                .font(.title3.weight(.semibold))

            Text("Count: \(viewModel.count)")
                .font(.system(size: 30, weight: .bold, design: .rounded))

            HStack(spacing: 12) {
                Button("เพิ่มค่า") {
                    viewModel.increment()
                }
                .buttonStyle(.borderedProminent)
                
                Button("ลบค่า") {
                    viewModel.decrement()
                }
                .buttonStyle(.borderedProminent)
                .tint(.red)

                Button("โหลดข้อมูล") {
                    viewModel.loadSampleData()
                }
                .buttonStyle(.bordered)
                .tint(.green)
            }

            Button("รีเซ็ต") {
                viewModel.reset()
            }
            .buttonStyle(.bordered)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 16))
    }
}

#Preview {
    CounterObservedObjectView()
}
