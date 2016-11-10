//
//  EmployeesFormViewController.swift
//  POWER
//
//  This App has been generated using IBM Mobile UI Builder
//
import UIKit

class EmployeesFormViewController: FormViewController {
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

		AnalyticsManager.sharedInstance?.analytics?.logPage("")
		let item = self.item as? EmployeesDBDSItem
    
		let nameField = StringField(name: EmployeesDBDSItemMapping.name, label: "Name", required: false, value: item?.name)
        contentView.addSubview(nameField)
		
		let lastnameField = StringField(name: EmployeesDBDSItemMapping.lastname, label: "Lastname", required: false, value: item?.lastname)
        contentView.addSubview(lastnameField)
		
		let pictureField = ImageField(name: EmployeesDBDSItemMapping.picture, label: "Picture", required: false, viewController: self, value: crudService?.imagePath(item?.picture))
        contentView.addSubview(pictureField)
		
		let roleField = StringField(name: EmployeesDBDSItemMapping.role, label: "Role", required: false, value: item?.role)
        contentView.addSubview(roleField)
		
		let emailField = StringField(name: EmployeesDBDSItemMapping.email, label: "Email", required: false, value: item?.email)
        contentView.addSubview(emailField)
		
		let phoneField = StringField(name: EmployeesDBDSItemMapping.phone, label: "Phone", required: false, value: item?.phone)
        contentView.addSubview(phoneField)
		
       
        updateViewConstraints()
        
        retrieveFields()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

