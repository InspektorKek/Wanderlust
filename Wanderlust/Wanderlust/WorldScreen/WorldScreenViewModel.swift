//
//  WorldScreenViewModel.swift
//  Wanderlust
//
//  Created by Mikhail Borisov on 24/10/22.
//

import Foundation

protocol WorldScreenDataModelDatasource {
    var data: [Country] { get set }
}

protocol WorldScreenDataModelAction {
    func fetchCountries()
}

// Base model protocol
protocol CoutriesViewModel: ObservableObject {
    var action: WorldScreenDataModelAction { get }
    var datasource: WorldScreenDataModelDatasource { get set }
}

final class WorldScreenViewModel: CoutriesViewModel, WorldScreenDataModelDatasource, WorldScreenDataModelAction {
    
    // MARK: - Datasource
    @Published var data: [Country] = []
    
    var datasource: WorldScreenDataModelDatasource {
        get { return _datasource }
        set { _datasource = newValue }
    }
    
    private lazy var _datasource: WorldScreenDataModelDatasource = {
        return self
    }()
    
    // MARK: - Action
    
    var action: WorldScreenDataModelAction {
        return self
    }
    
    func fetchCountries() {
        data = Self.getUsersSavedCountries()
    }
}

extension WorldScreenDataModelAction {
    #warning("Get saved countries")
    static func getUsersSavedCountries() -> [Country] {
        return nil ?? getDefaultCountries()
    }
    
    private static func getDefaultCountries() -> [Country] {
        return [
            Country(name: "Mexico", isAvailable: true, constantOffset: Country.OffsetMultiply(x: -0.45, y: 0.1)),
            Country(name: "South Africa", isAvailable: false, constantOffset: Country.OffsetMultiply(x: 0.25, y: 0.2)),
            Country(name: "Brazil", isAvailable: false, constantOffset: Country.OffsetMultiply(x: -0.22, y: 0.25)),
            Country(name: "Russia", isAvailable: false, constantOffset: Country.OffsetMultiply(x: 0.3, y: -0.3))
        ]
    }
}
