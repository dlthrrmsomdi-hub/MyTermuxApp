import SwiftUI

@main
struct MyTermuxApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    @State private var count = 0

    var body: some View {
        VStack(spacing: 24) {
            Image(systemName: "terminal.fill")
                .font(.system(size: 64))
                .foregroundStyle(.green)

            Text("Built from Termux!")
                .font(.title.bold())

            Text("จำนวนครั้งที่กด: \(count)")
                .font(.title2)
                .monospacedDigit()

            HStack(spacing: 16) {
                Button("รีเซ็ต") {
                    count = 0
                }
                .buttonStyle(.bordered)

                Button("เพิ่ม +1") {
                    count += 1
                }
                .buttonStyle(.borderedProminent)
            }
        }
        .padding()
    }
}
