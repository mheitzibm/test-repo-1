//
//  NewsScreen1DSItem.swift
//  POWER
//
//  This App has been generated using IBM Mobile UI Builder
//

import Foundation

enum NewsScreen1DSItemMapping {
	static let title = "title"
	static let subtitle = "subtitle"
	static let content = "content"
	static let date = "date"
	static let id = "id"
}

public class NewsScreen1DSItem : Item {
	
	var title : String?
	var subtitle : String?
	var content : String?
	var date : NSDate?
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
        
 		title = dic[NewsScreen1DSItemMapping.title] as? String
		
		subtitle = dic[NewsScreen1DSItemMapping.subtitle] as? String
		
		content = dic[NewsScreen1DSItemMapping.content] as? String
		
		date = NSDate.date(dic[NewsScreen1DSItemMapping.date] as? String)
		
		id = dic[NewsScreen1DSItemMapping.id] as? String
		
	   
    }
}
	

