//
//  EmptyState.swift
//  Appetizers
//
//  Created by Эдип on 08.10.2022.
//

import SwiftUI

struct EmptyState: View {
    
    let imagaName: String
    let message: String
    
    var body: some View {
        ZStack {
            Color(UIColor.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image(imagaName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y: -50)
        }
    }
}

struct EmptyState_Previews: PreviewProvider {
    static var previews: some View {
        EmptyState(imagaName: "empty-order", message: "This is our test message")
    }
}
