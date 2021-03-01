import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.39, green: 0.43, blue: 0.45).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("ava").resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).frame(width: 150.0, height: 150.0).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).overlay(Circle().stroke(lineWidth: 1.5))
                Text("Andrey Dubinsky")
                    .font(.title)
                Text("IOS Developer | Junior")
                    .font(.headline)
                    .fontWeight(.light)
                Divider()
                Card(image: "phone.fill", message: "+7(996)320-90-75")
                Card(image: "envelope.fill", message: "adreyka626@mail.ru")
            }.foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}

struct Card: View {
    let image: String
    let message: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25).padding(.horizontal).frame(height: 50).overlay(HStack {
            Image(systemName: image)
            Text(message).font(.headline)
        }.foregroundColor(Color(red: 0.39, green: 0.43, blue: 0.45)))
    }
}
