//
//  ContentView.swift
//  RSANumbers
//
//  Created by Judy Yu on 2022-04-19.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Stored properties
    @State var providedLowerBound = ""
    @State var providedUpperBound = ""
    var numberOfDivisors = 0
    var numberOfRSANumbers = 0
    
    //MARK: Computed properties
    
    var lowerBound: Double? {
        guard let lowerBound = Double(providedLowerBound),
              lowerBound > 0
        else {
            //when the tests are failed (no valid value
            return nil
        }
        return lowerBound
    }
    
    var upperBound: Double? {
        guard let upperBound = Double(providedUpperBound),
              upperBound > 0
        else {
            //when the tests are failed (no valid value
            return nil
        }
        return upperBound
    }
    
    var body: some View {
        VStack {
            // Input: lower bound
            TextField("Lower Bound", text: $providedLowerBound, prompt: Text("Enter lower limit of range (1-1000)"))
            //              Condition       true        false
                .foregroundColor(lowerBound == nil ? Color.red : Color.primary)
                .padding(12)
                .keyboardType(UIKeyboardType.default)
                .overlay(
                    // Add the outline
                    RoundedRectangle(cornerRadius: 2)
                        .stroke(Color.purple, lineWidth: 2.5)
                )
                .padding(25)
            
            // Input: upper bound
            TextField("Upper Bound", text: $providedUpperBound, prompt: Text("Enter upper limit of range (<1000)"))
            //              Condition       true        false
                .foregroundColor(lowerBound == nil ? Color.red : Color.primary)
                .padding(12)
                .keyboardType(UIKeyboardType.default)
                .overlay(
                    // Add the outline
                    RoundedRectangle(cornerRadius: 2)
                        .stroke(Color.purple, lineWidth: 2.5)
                )
                .padding(.horizontal, 25)
            
            //output
            Text("The number of RSA numbers between 11 and 15 is 2")
                .font(.title3)
                .multilineTextAlignment(.center)
                .padding()
                .padding(.bottom, 80)
            
            //            ForEach(lowerBound...upperBound) { i in
            //
            //                //loop over every possible divisor of the current i
            //                ForEach(1...i) { possibleDivisor in
            //
            //                    if i.isMultiple(of: possibleDivisor) {
            //
            //                        numberOfDivisors += 1
            //                    }
            //                }
            //
            //                //check if current i is an RSA number
            //                if numberOfDivisors == 4 {
            //
            //                    numberOfRSANumbers += 1
            //
            //                }
            //
            //                //clear the number of divisor, get ready to loop again
            //                numberOfDivisors = 0
            //            }
            //            Text("")
        }
        .navigationTitle("RSA Numbers")
        .padding()
    }
    // MARK: Functions
    func checkRSANumbers() {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
