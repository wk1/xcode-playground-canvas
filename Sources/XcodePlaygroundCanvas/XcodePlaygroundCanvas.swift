import SwiftUI

public struct PlaygroundCanvas<Content: View>: View {
  var content: Content
  
  public init(@ViewBuilder content: () -> Content) {
    self.content = content()
  }
  
  public var body: some View {
    ZStack {
      LinearGradient(colors: [.clear, .white.opacity(0.05)], startPoint: .topLeading, endPoint: .bottomTrailing)
      ZStack {
        Color.white.opacity(0.1)
        content
      }
      .cornerRadius(7.5)
      .padding()
      RoundedRectangle(cornerRadius: 20.0)
        .stroke(.white.opacity(0.2), lineWidth: 1.0)
    }
    .frame(width: 480, height: 720)
    .cornerRadius(20.0)
    .background {
      Color(red: 58/255, green: 57/255, blue: 66/255)
    }
  }
}

/* Use like this:
  PlaygroundPage.current.setLiveView (
    PlaygroundCanvas {
      ContentView() // or whatever your view is called... ☺️
    }
  )
*/

#Preview {
  PlaygroundCanvas {
    Color.clear
  }
}
