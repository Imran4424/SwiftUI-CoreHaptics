//
//  UIKitHapticsView.swift
//  CoreHapticss
//
//  Created by Shah Md Imran Hossain on 6/11/23.
//

import SwiftUI

struct UIKitHapticsView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Success")
                .padding()
                .background(.green)
                .onTapGesture(perform: simpleSuccess)
            
            Text("Warning")
                .padding()
                .background(.teal)
                .onTapGesture(perform: simpleWarning)
            
            Text("Error")
                .padding()
                .background(.red)
                .onTapGesture(perform: simpleError)
        }
    }
}

extension UIKitHapticsView {
    func simpleSuccess() {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.success)
    }
    
    func simpleWarning() {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.warning)
    }
    
    func simpleError() {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.error)
    }
}


#Preview {
    UIKitHapticsView()
}
