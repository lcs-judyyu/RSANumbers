//
//  ContentView.swift
//  RSANumbers
//
//  Created by Judy Yu on 2022-04-19.
//

import SwiftUI

struct ContentView: View {
//MARK: Stored properties
    let lowerBound = 10
    let upperBound = 12
    var numberOfDivisors = 0
    var numberOfRSANumbers = 0
    
    var body: some View {
        VStack {
            ForEach (lowerBound..<upperBound + 1) { i in
                
                //loop every possible divisor of the current i
                ForEach (1..<i + 1) { possibleDivisor in
                    
                    if i.isMultiple(of: possibleDivisor) {
                        
                        numberOfDivisors += 1
                    }
                }
                
                //check if current i is an RSA number
                if numberOfDivisors == 4 {

                    numberOfRSANumbers += 1
                    
                }
                
                //clear the number of divisor, get ready to loop again
                numberOfDivisors = 0
            }
        }
    }
    // MARK: Functions
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
