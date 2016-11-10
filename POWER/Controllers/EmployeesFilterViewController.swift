//
//  EmployeesFilterViewController.swift
//  POWER
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit

class EmployeesFilterViewController: FilterViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filterFields = [
			OptionsFilterField(datasource: datasource,
                datasourceOptions: datasourceOptions,
                name: EmployeesDBDSItemMapping.name,
                label: "Name",
                viewController: self),
			OptionsFilterField(datasource: datasource,
                datasourceOptions: datasourceOptions,
                name: EmployeesDBDSItemMapping.lastname,
                label: "Lastname",
                viewController: self),
			OptionsFilterField(datasource: datasource,
                datasourceOptions: datasourceOptions,
                name: EmployeesDBDSItemMapping.role,
                label: "Role",
                viewController: self),
			OptionsFilterField(datasource: datasource,
                datasourceOptions: datasourceOptions,
                name: EmployeesDBDSItemMapping.email,
                label: "Email",
                viewController: self),
			OptionsFilterField(datasource: datasource,
                datasourceOptions: datasourceOptions,
                name: EmployeesDBDSItemMapping.phone,
                label: "Phone",
                viewController: self),
            
        ]

        loadFields()
    }
}

