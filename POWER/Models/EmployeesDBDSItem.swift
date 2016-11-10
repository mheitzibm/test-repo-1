//
//  EmployeesDBDSItem.swift
//  POWER
//
//  This App has been generated using IBM Mobile UI Builder
//

import Foundation

enum EmployeesDBDSItemMapping {
	static let name = "name"
	static let lastname = "lastname"
	static let picture = "picture"
	static let role = "role"
	static let email = "email"
	static let phone = "phone"
	static let id = "id"
}

public class EmployeesDBDSItem : Item {
	
	var name : String?
	var lastname : String?
	var picture : String?
	var role : String?
	var email : String?
	var phone : String?
	var id : String?
	
	// MAR: - <Item>

	public var identifier: AnyObject? {
		guard let identifier = id else {
			return ""
		}
		return identifier
	}
	
	required public init?(dictionary: NSDictionary?) {
    
        retrieve(dictionary)
    }
	
	public func retrieve(dictionary: NSDictionary?) {
     
        guard let dic = dictionary else {
            return
        }
        
 		name = dic[EmployeesDBDSItemMapping.name] as? String
		
		lastname = dic[EmployeesDBDSItemMapping.lastname] as? String
		
		picture = dic[EmployeesDBDSItemMapping.picture] as? String
		
		role = dic[EmployeesDBDSItemMapping.role] as? String
		
		email = dic[EmployeesDBDSItemMapping.email] as? String
		
		phone = dic[EmployeesDBDSItemMapping.phone] as? String
		
		id = dic[EmployeesDBDSItemMapping.id] as? String
		
	   
    }
}
	

