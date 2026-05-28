import SwiftUI

struct CounterStateObjectView: View {
    
    @StateObject private var viewModel = CounterViewModel()
    @State private var isHighlighted = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("View นี้เป็น owner ของ ViewModel")
                .font(.headline)
            
            VStack(spacing: 12) {
                Text(viewModel.title)
                    .font(.title2.weight(.bold))
                
                Text("Count: \(viewModel.count)")
                    .font(.system(size: 34, weight: .bold, design: .rounded))
                
                Text("Object ID: \(viewModel.shortInstanceID)")
                    .font(.footnote.monospaced())
                    .foregroundStyle(.secondary)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(isHighlighted ? Color.orange.opacity(0.18) : Color.blue.opacity(0.12), in: RoundedRectangle(cornerRadius: 16))
            
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
                
                
                Button("สลับสีกรอบ") {
                    isHighlighted.toggle()
                }
                .buttonStyle(.bordered)
            }
            
            Text("""
            - `@StateObject` ทำให้ View เป็น owner ของ ViewModel
            - เมื่อ View re-render SwiftUI จะยังคงเก็บ object เดิมไว้
            """)
            .font(.headline)
            .foregroundStyle(.secondary)
            .multilineTextAlignment(.leading)
        }
        .padding()
    }
}

#Preview {
    CounterStateObjectView()
}
