//
//  DatasourceConfig.swift
//  POWER
//
//  This App has been generated using IBM Mobile UI Builder
//

import Foundation
 
 enum DatasourceConfig {

	
	enum Local {

		enum EmptyDatasource{
			
			static let resource = "EmptyDatasource"
		}
	}
	 
	
	enum Cloud {
		
		static let baseUrl = "https://baked-devel-ibm.herokuapp.com"

		enum EmployeesDBDS{
			
			static let resource = "/app/576c19c1222d360300b634cb/r/employeesDBDS"
			static let apiKey = "F370hePT"
		}

		enum StatusScreen1DS{
			
			static let resource = "/app/576c19c1222d360300b634cb/r/statusScreen1DS"
			static let apiKey = "F370hePT"
		}

		enum NewsScreen1DS{
			
			static let resource = "/app/576c19c1222d360300b634cb/r/newsScreen1DS"
			static let apiKey = "F370hePT"
		}
	}


}

