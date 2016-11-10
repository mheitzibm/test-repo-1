//
//  StatusFormViewController.swift
//  POWER
//
//  This App has been generated using IBM Mobile UI Builder
//
import UIKit

class StatusFormViewController: FormViewController {
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

		AnalyticsManager.sharedInstance?.analytics?.logPage("")
		let item = self.item as? StatusScreen1DSItem
    
		let statusField = StringField(name: StatusScreen1DSItemMapping.status, label: "Status", required: false, value: item?.status)
        contentView.addSubview(statusField)
		
		let locationField = LocationField(name: StatusScreen1DSItemMapping.location, label: "Location", required: false, viewController: self, value: item?.location)
        contentView.addSubview(locationField)
		
		let employeeField = StringField(name: StatusScreen1DSItemMapping.employee, label: "Employee", required: false, value: item?.employee)
        contentView.addSubview(employeeField)
		
		let startDateField = DateTimeField(name: StatusScreen1DSItemMapping.startDate, label: "StartDate", required: false, value: item?.startDate)
        contentView.addSubview(startDateField)
		
		let endDateField = DateTimeField(name: StatusScreen1DSItemMapping.endDate, label: "EndDate", required: false, value: item?.endDate)
        contentView.addSubview(endDateField)
		
       
        updateViewConstraints()
        
        retrieveFields()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

