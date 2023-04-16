//
//  Alert.swift
//  BarcodeScanner
//
//  Created by Alex Desjardins on 4/15/23.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: "Invalid Device Input",
                                              message: "Something is wrong with the camera. Unable to capture input.",
                                              dismissButton: .default(Text("Dismiss")))
    
    static let invalidScanType = AlertItem(title: "Invalid Scan Type",
                                              message: "Value scanned is not valid. Please scan EAN-8 or EAN-13 barcodes.",
                                              dismissButton: .default(Text("Dismiss")))
}
