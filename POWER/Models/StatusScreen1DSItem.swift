//
//  StatusScreen1DSItem.swift
//  POWER
//
//  This App has been generated using IBM Mobile UI Builder
//

import Foundation

enum StatusScreen1DSItemMapping {
	static let status = "status"
	static let location = "location"
	static let employee = "employee"
	static let startDate = "startDate"
	static let endDate = "endDate"
	static let id = "id"
}

public class StatusScreen1DSItem : Item {
	
	var status : String?
	var location : GeoPoint?
	var employee : String?
	var startDate : NSDate?
	var endDate : NSDate?
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
        
 		status = dic[StatusScreen1DSItemMapping.status] as? String
		
			
		location = GeoPoint(dictionary: dic[StatusScreen1DSItemMapping.location] as? NSDictionary)
		
		employee = dic[StatusScreen1DSItemMapping.employee] as? String
		
		startDate = NSDate.date(dic[StatusScreen1DSItemMapping.startDate] as? String)
		
		endDate = NSDate.date(dic[StatusScreen1DSItemMapping.endDate] as? String)
		
		id = dic[StatusScreen1DSItemMapping.id] as? String
		
	   
    }
}
	

