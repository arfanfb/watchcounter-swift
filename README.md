# Counter Feature

This project demonstrates a simple counter feature in an iOS app using Swift and SwiftUI. The counter increments each time the screen is tapped and can be reset to zero using a button.

## Features

- Tap the screen to increment the counter.
- Reset button to set the counter to zero.

## Requirements

- Xcode
- Swift
- SwiftUI

## Installation

1. Clone the repository.
2. Open the project in Xcode.

## Usage

1. Run the app in the simulator or on a physical device.
2. Tap anywhere on the screen to increment the counter.
3. Tap the "Reset" button to reset the counter to zero.

## Code Overview

The main view `CounterView` contains the following components:

- A `Text` view to display the counter.
- A `Button` to reset the counter.
- A `TapGesture` to handle screen taps and increment the counter.

```swift
import SwiftUI

struct CounterView: View {
    @State private var counter: Int = 0

    var body: some View {
        VStack {
            Spacer()

            Text("Counter: \(counter)")
                .font(.largeTitle)
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
```

## License

This project is licensed under the MIT License.
