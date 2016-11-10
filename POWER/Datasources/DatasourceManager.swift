//
//  DatasourceManager.swift
//  POWER
//
//  This App has been generated using IBM Mobile UI Builder
//

import Foundation

class DatasourceManager {

	static let sharedInstance = DatasourceManager()
	
	lazy var EmptyDatasource: LocalDatasource<Item1> = {
    
        return LocalDatasource<Item1>(resource: DatasourceConfig.Local.EmptyDatasource.resource) 
    }()
	
	
	lazy var EmployeesDBDS: CloudDatasource<EmployeesDBDSItem> = {
    
        return CloudDatasource<EmployeesDBDSItem>(baseUrl: DatasourceConfig.Cloud.baseUrl,
                                             resource: DatasourceConfig.Cloud.EmployeesDBDS.resource,
                                             apikey: DatasourceConfig.Cloud.EmployeesDBDS.apiKey,
                                             searchableFields: [EmployeesDBDSItemMapping.name, EmployeesDBDSItemMapping.lastname, EmployeesDBDSItemMapping.role, EmployeesDBDSItemMapping.email, EmployeesDBDSItemMapping.phone]) 
    }()
	
	lazy var StatusScreen1DS: CloudDatasource<StatusScreen1DSItem> = {
    
        return CloudDatasource<StatusScreen1DSItem>(baseUrl: DatasourceConfig.Cloud.baseUrl,
                                             resource: DatasourceConfig.Cloud.StatusScreen1DS.resource,
                                             apikey: DatasourceConfig.Cloud.StatusScreen1DS.apiKey,
                                             searchableFields: [StatusScreen1DSItemMapping.status, StatusScreen1DSItemMapping.employee]) 
    }()
	
	lazy var NewsScreen1DS: CloudDatasource<NewsScreen1DSItem> = {
    
        return CloudDatasource<NewsScreen1DSItem>(baseUrl: DatasourceConfig.Cloud.baseUrl,
                                             resource: DatasourceConfig.Cloud.NewsScreen1DS.resource,
                                             apikey: DatasourceConfig.Cloud.NewsScreen1DS.apiKey,
                                             searchableFields: [NewsScreen1DSItemMapping.title, NewsScreen1DSItemMapping.subtitle, NewsScreen1DSItemMapping.content]) 
    }()
	
}

