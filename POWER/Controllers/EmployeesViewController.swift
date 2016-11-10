//
//  EmployeesViewController.swift
//  POWER
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit

class EmployeesViewController: TableViewController<EmployeesDBDSItem>, UITableViewDataSource, UITableViewDelegate {
    
    typealias Cell = DetailImageCell

    
    override init() {
        super.init()
		
		datasource = DatasourceManager.sharedInstance.EmployeesDBDS
		dataResponse = self	
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AnalyticsManager.sharedInstance?.analytics?.logPage("Employees")
       
	    navigationItem.title = NSLocalizedString("Elephantasticbasaltorpepper", comment: "")
			

        tableView.dataSource = self
        tableView.delegate = self
        tableView.registerClass(Cell.self, forCellReuseIdentifier: Cell.identifier)
		behaviors.append(FilterBehavior<EmployeesFilterViewController>(viewController: self))
		behaviors.append(SearchBehavior(viewController: self))
		behaviors.append(CreateBehavior<EmployeesFormViewController, EmployeesDBDSItem>(viewController: self))

        for behavior in self.behaviors {
            behavior.load()
        }
			
		updateViewConstraints()

        loadData()					
    }
    
	//MARK: - <UITableViewDataSource>
	
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items.count
    }
	
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCellWithIdentifier(Cell.identifier, forIndexPath: indexPath) as! Cell

		// You can customize the accessory icon ...
        let icon = UIImage(named: Images.arrow)?.imageWithRenderingMode(.AlwaysTemplate)
        let accessoryImageView = UIImageView(image: icon)
        accessoryImageView.tintColor = Style.sharedInstance.foregroundColor
        cell.accessoryView = accessoryImageView
	
        // Binding 
        let item = items[indexPath.row]
			
        cell.photoImageView.loadImage(datasource.imagePath(item.picture))
		cell.titleLabel.text = String(format: "%@ %@", item.name ?? "", item.lastname ?? "")
		cell.detailLabel.text = item.role
		
		// Styles

		cell.titleLabel.font = Style.sharedInstance.font(Fonts.Sizes.large, bold: true, italic: false)
		cell.titleLabel.textColor = UIColor(rgb: 0x313131)
	
		cell.detailLabel.font = Style.sharedInstance.font(Fonts.Sizes.medium, bold: true, italic: false)
		cell.detailLabel.textColor = UIColor(rgb: 0xee590b)
			
		return cell
    }

	 //MARK: - <UITableViewDelegate>
	 
	
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)

        let destinationViewController = EmployeesDetailViewController()
        destinationViewController.item = items[indexPath.row]
	        
        navigationController?.pushViewController(destinationViewController, animated: true)
    }
	
	func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        
        loadMoreData(indexPath.row)
		
		cell.preservesSuperviewLayoutMargins = false
        cell.layoutMargins = UIEdgeInsetsZero
        cell.separatorInset = UIEdgeInsetsZero
    }
}

//MARK: - <DataResponse>

extension EmployeesViewController: DataResponse {

    func success() {
        
        tableView.reloadData()
    }
    
    func failure(error: NSError?) {
        
        ErrorManager.show(error, rootController: self)
    }
}

