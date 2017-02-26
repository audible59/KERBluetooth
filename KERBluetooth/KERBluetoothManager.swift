//
//  KERBluetoothManager.swift
//  KERBluetooth
//
//  Created by Lindsey Rafferty on 2/24/17.
//  Copyright © 2017 Quiver Coding. All rights reserved.
//

public class KERBluetoothManager: NSObject {
    
    // MARK: - Properties -
    
    var discoverService: DiscoverService = DiscoverService()
    
    // MARK: - API Access Methods -
    
    public func scanForPeripherals() {
        discoverService.scanForPeripherals()
    }
}
