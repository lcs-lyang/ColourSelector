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
    
    
    //Tracks the list of saved palette
    @State private var savedPalettes: [SavedPalette] = [] //empty
    
    
    //MARK: computed properties
    
    //The selected hue expressed as a value bettween 0 and 1
    private var hue: Double {
        return seclectedHue / 360.0
    }
    
    private var hue2: Double {
        return seclectedHue / 360.0
    }
    
    private var hue3: Double {
        return seclectedHue / 360.0
    }
    
    //Make the color that SwiftUI will use to ser the background of the colour swatch
    private var baseColour: Color {
        return Color(hue: hue,
                     saturation: 0.8,
                     brightness: 0.9)
    }
    private var baseColour2: Color {
        return Color(hue: hue2,
                     saturation: 0.8,
                     brightness: 0.7)
    }
    private var baseColour3: Color {
        return Color(hue: hue3,
                     saturation: 0.8,
                     brightness: 0.5)
    }
    
    // interface
    var body: some View {
        VStack {
            VStack{
                
            }
            .frame(width: 200, height: 200)
            .background(baseColour)
            
            
            Text("Hue")
                .bold()
            
            Text("\(seclectedHue.formatted(.number.precision(.fractionLength(1))))")
            
            Slider(value: $seclectedHue,
                   in: 0...360,
                   label: { Text("Hue)") },
                   minimumValueLabel: { Text("0") },
                   maximumValueLabel: { Text ("360") })
            
            
            HStack{
                Text("Monochromatic")
                Spacer()
                    .padding()
            }
            
            HStack (spacing: 0){
                
                VStack{
                    
                }
                .frame(width: 75, height: 75)
                .background(baseColour)
                
                VStack{
                    
                }
                .frame(width: 75, height: 75)
                .background(baseColour2)
                
                VStack{
                    
                }
                .frame(width: 75, height: 75)
                .background(baseColour3)
                
                Spacer()
            }
            
            
            Button(action: {
               //Create a new palette instance
                let newPalette = SavedPalette(hue: hue)
                
                //Add it to the list
                savedPalettes.append(newPalette)
                
                print(savedPalettes)
                
                
            }, label: {
                Text("Save")
            })
            
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
