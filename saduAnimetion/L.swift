import SwiftUI

struct L: View {
    @State private var navigateToViewB = false

    var body: some View {
        NavigationLink("", destination: ViewB(), isActive: $navigateToViewB)

        Text("View A")
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    navigateToViewB = true
                }
            }
    }
}

struct ViewB: View {
    var body: some View {
        Text("View B")
    }
}

//@main
//struct YourApp: App {
//    var body: some Scene {
//        WindowGroup {
//            L()
//        }
//    }
//}
#Preview {
    L()
}

