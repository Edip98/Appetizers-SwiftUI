//
//  Alert.swift
//  Appetizers
//
//  Created by Эдип on 07.10.2022.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let massage: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    // MARK: - Network Alert
    static let invalidData = AlertItem(title: Text("Server Error"),
                                       massage: Text("The data recived from the server was invalid. Please cannoct support."),
                                       dismissButton: .default(Text("OK")))
    
    static let invalidResponse = AlertItem(title:Text("Server Error"),
                                           massage: Text("Invalid response from the server. Please try again later or contact support."),
                                           dismissButton: .default(Text("OK")))
    
    static let invalidURL = AlertItem(title: Text("Server Error"),
                                      massage: Text("There was an issue connacting to the server. If this persists, please contact support."),
                                      dismissButton: .default(Text("OK")))
    
    static let invalidComplete = AlertItem(title: Text("Server Error"),
                                           massage: Text("Unable to complete your request this time. Please check your internet connaction."),
                                           dismissButton: .default(Text("OK")))
    
    // MARK: - Account Alert
    static let invalidForm = AlertItem(title: Text("Invalid Form"),
                                           massage: Text("Please ensure all fileds in the fomr had been filled out."),
                                           dismissButton: .default(Text("OK")))
    
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                           massage: Text("Please ensure your email is correct."),
                                           dismissButton: .default(Text("OK")))
    
    static let userSaveSuccess = AlertItem(title: Text("Profile Saved"),
                                           massage: Text("Your profile information was successfuly saved."),
                                           dismissButton: .default(Text("OK")))
    
    static let invalidUserData = AlertItem(title: Text("Profile Error"),
                                           massage: Text("There was an error saving or retrieving your profile."),
                                           dismissButton: .default(Text("OK")))
}
