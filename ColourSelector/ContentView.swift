//
//  ContentView.swift
//  ColourSelector
//
//  Created by Lillian Yang on 2022-10-27.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: stored properties
    
    @State private var seclectedHue = 0.0
    
    //MARK: computed properties
    
    //The selected hue expressed as a value bettween 0 and 1
    private var hue: Double {
        return seclectedHue / 360.0
    }
    
    //Make the color that SwiftUI will use to ser the background of the colour swatch
    private var baceColour: Color {
        return Color(hue: hue,
                     saturation: 0.8,
                     brightness: 0.9)
    }
    
    // interface
    var body: some View {
        VStack {
            VStack{
                
            }
            .frame(width: 200, height: 200)
            .background(baceColour)
            
            
            Text("Hue")
                .bold()
            
            Text("\(seclectedHue.formatted(.number.precision(.fractionLength(1))))")
            
            Slider(value: $seclectedHue,
                   in: 0...360,
                   label: { Text("Hue)") },
                   minimumValueLabel: { Text("0") },
                   maximumValueLabel: { Text ("360") })
            
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
