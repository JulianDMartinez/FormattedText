//
//  ContentView.swift
//  FormattedText
//
//  Created by Julian Martinez on 5/30/22.
//

import SwiftUI

struct ContentView: View {
    @State var password = "1234"
    @State var someText = "initial text"
    
    var body: some View {
        VStack {
            SecureField("Enter Password", text: $password)
                .padding()
            Text("Password Entered: \(password)")
                .italic()
            TextField("Enter Some Text", text: $someText)
                .padding()
            Text("\(someText)")
                .font(.largeTitle)
                .underline()
            Text("Changing text color and makr it bold")
                .foregroundColor(Color.blue)
                .bold()
            Text("Use kerning to change space between lines of text")
                .kerning(7)
            Text("Changing baseline offset")
                .baselineOffset(100)
            Text("Stringthrough")
                .strikethrough()
            Text("This is a multiline text implemented in SwiftUI. The trailing modifier was added to the text. This text also implements multiple modifiers")
                .background(Color.yellow)
                .multilineTextAlignment(.trailing)
                .lineSpacing(10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
