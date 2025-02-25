import SwiftUI

struct CounterView: View {
    @State private var counter: Int = 0

    var body: some View {
        VStack {
            Spacer()
            
            Text("Counter: \(counter)")
                .font(.body)
                .padding()
            
            Spacer()
            
            Button(action: {
                counter = 0
            }) {
                Text("Reset")
                    .font(.body)
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Spacer()
        }
        .contentShape(Rectangle())
        .onTapGesture {
            counter += 1
        }
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView()
    }
}
