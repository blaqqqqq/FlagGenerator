import SwiftUI

struct ContentView: View {
    let flags = [
        "🇮🇩", "🇺🇸", "🇯🇵", "🇰🇷", "🇧🇷",
        "🇫🇷", "🇩🇪", "🇨🇦", "🇬🇧", "🇦🇺",
        "🇮🇹", "🇲🇽", "🇮🇳", "🇪🇸", "🇨🇳",
        "🇷🇺", "🇸🇬", "🇿🇦", "🇹🇷", "🇸🇪"
    ]
    
    @State private var currentFlagIndex = 0
    
    var body: some View {
        VStack(spacing: 40) {
            Text(flags[currentFlagIndex])
                .font(.system(size: 150))
                .frame(width: 300, height: 300)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(radius: 10)
            
            Button(action: changeFlag) {
                Text("Go!")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
        .background(Color.gray.opacity(0.1))
    }
    
    func changeFlag() {
        currentFlagIndex = Int.random(in: 0..<flags.count)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
