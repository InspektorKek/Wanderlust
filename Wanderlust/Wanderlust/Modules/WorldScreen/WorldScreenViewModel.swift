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
    func setAvailableBy(countryID id: UUID)
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
        data = AppData.countries
    }
    
    func setAvailableBy(countryID id: UUID) {
        if let index = AppData.countries.firstIndex(where: { $0.id == id }) {
            AppData.countries[index].isAvailable = true
        }
    }
}
