//
//  ContentView.swift
//  CelciusFahrenheitConverter
//
//  Created by Mustafa Murat Arat on 8/11/23.
//

import SwiftUI

struct ContentView: View{
    @State private var celcius: Double = 0.0
    @State private var fahrenheit: Double = 0.0

    var body: some View{
        VStack{
            Spacer()
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150, alignment: .bottom)
            
            Text("Celcius to Fahrenheit Converter")
                .font(.system(size: 23))
                .fontWeight(.bold)
            TextField("Enter Celcius", value: $celcius, formatter: NumberFormatter())
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .keyboardType(.decimalPad)
            Text("Fahrenheit: \(String(format: "%.2f", fahrenheit))")
                .font(.title)
                .padding()
            
            Button("Convert", action:{
                convertToCelcius()
            })
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .buttonBorderShape(.capsule)
            .tint(.black)
            .font(.system(size: 15))
            
            Spacer()
        }
        .padding()
    }
    private func convertToCelcius() {
        fahrenheit = (celcius * 9/5) + 32.0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
