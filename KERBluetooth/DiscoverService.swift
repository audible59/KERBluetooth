//
//  DiscoverService.swift
//  KERBluetooth
//
//  Created by Lindsey Rafferty on 2/25/17.
//  Copyright © 2017 Quiver Coding. All rights reserved.
//

import CoreBluetooth

class DiscoverService: NSObject, CBCentralManagerDelegate {
    // MARK: - Properties -
    
    var peripheral: CBPeripheral? = nil
    var centralManager: CBCentralManager! = nil
    
    // MARK: - CBCentralManager Delegate Methods -
    
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        print("Central Manager State \(central.state)")
    }
    
    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber) {
        print("Discovered Peripheral - \(peripheral)")
    }
    
    // MARK: - Helper methods -
        
    func scanForPeripherals() {
        centralManager = CBCentralManager(delegate: self, queue: nil)
        
        // Scan for all surrounding peripherals
        centralManager.scanForPeripherals(withServices: nil, options: nil)
    }
}