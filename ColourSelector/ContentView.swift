//
//  ContentView.swift
//  ColourSelector
//
//  Created by Lillian Yang on 2022-10-27.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: stored proprotys
    
    @State private var seclectedHue = 0.0
    
    //MARK: computed proprotys
    
    
    // interface
    var body: some View {
        VStack {
            VStack{
                
            }
            .frame(width: 200, height: 200)
            .background(Color.blue)
            
            
            Text("Hue")
                .bold()
            
            Text("\(seclectedHue)")
            
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
