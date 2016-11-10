//
//  MainMenuViewController.swift
//  POWER
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit

class MainMenuViewController: TableViewController<MenuItem>, UITableViewDataSource, UITableViewDelegate {
    
    typealias Cell = BasicCell

    
	override init() {
        super.init()
    }
	
    override func viewDidLoad() {
        super.viewDidLoad()

        AnalyticsManager.sharedInstance?.analytics?.logPage("MainMenu")
        
		navigationItem.title = NSLocalizedString("Main Menu", comment: "")
		
        items = [
			MenuItem(text: "Menu", action: SlidingAction<MenuViewController>(rootViewController: self)),
		
        ]
        
		tableView.dataSource = self
        tableView.delegate = self
        tableView.registerClass(Cell.self, forCellReuseIdentifier: Cell.identifier)
		
		updateViewConstraints()
    }
  
    //MARK: - <UITableViewDataSource>
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(Cell.identifier, forIndexPath: indexPath) as! Cell
        
        let item = items[indexPath.row]

        cell.titleLabel.text = item.text
        cell.userInteractionEnabled = false
        cell.accessoryView = nil
        cell.accessoryType = .None
        if let action = item.action where action.canBeExecuted() {
            
            cell.userInteractionEnabled = true
        }
        
        return cell
    }
    
    //MARK: - <UITableViewDelegate>
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let item = items[indexPath.row]
        item.action?.execute()
    }
}

