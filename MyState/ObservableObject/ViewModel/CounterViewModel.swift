import Combine
import Foundation

final class CounterViewModel: ObservableObject {
    @Published var title = "SwiftUI Counter"
    @Published var count = 0

    let instanceID = UUID()

    var shortInstanceID: String {
        String(instanceID.uuidString.prefix(6))
    }

    func increment() {
        count += 1
    }

    func decrement() {
        count -= 1
    }

    func reset() {
        title = "SwiftUI Counter"
        count = 0
    }

    func loadSampleData() {
        title = "ObservableObject Demo"
        count = 999
    }
}
