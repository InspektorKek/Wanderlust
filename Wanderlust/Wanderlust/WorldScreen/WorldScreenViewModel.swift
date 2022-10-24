//
//  WorldScreenViewModel.swift
//  Wanderlust
//
//  Created by Mikhail Borisov on 24/10/22.
//

import Foundation

protocol WorldScreenDataModelDatasource {
    var data: [Countriable] { get set }
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
    @Published var data: [Countriable] = []
    
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
    static func getUsersSavedCountries() -> [Countriable] {
        return nil ?? getDefaultCountries()
    }
    
    private static func getDefaultCountries() -> [Countriable] {
        return [
            Country(name: "Mexico", isAvailable: true),
            Country(name: "Brazil", isAvailable: false),
            Country(name: "Russia", isAvailable: false),
            Country(name: "South Africa", isAvailable: false)
        ]
    }
}
