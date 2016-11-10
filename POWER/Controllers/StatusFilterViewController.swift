//
//  StatusFilterViewController.swift
//  POWER
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit

class StatusFilterViewController: FilterViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filterFields = [
			OptionsFilterField(datasource: datasource,
                datasourceOptions: datasourceOptions,
                name: StatusScreen1DSItemMapping.status,
                label: "Status",
                viewController: self),
			OptionsFilterField(datasource: datasource,
                datasourceOptions: datasourceOptions,
                name: StatusScreen1DSItemMapping.employee,
                label: "Employee",
                viewController: self),
            
        ]

        loadFields()
    }
}

