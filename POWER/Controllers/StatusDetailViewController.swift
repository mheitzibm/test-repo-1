//
//  StatusDetailViewController.swift
//  POWER
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit

class StatusDetailViewController: DataViewController<StatusScreen1DSItem> {
    
    var didSetupConstraints = false
	
	var textLabel1Header: UILabel!
	var textLabel1: UILabel!
	var textLabel2Header: UILabel!
	var textLabel2: UILabel!
	var textLabel3Header: UILabel!
	var textLabel3: UILabel!
	var textLabel4Header: UILabel!
	var textLabel4: UILabel!
	var textLabel4Button: UIButton!
	
	

	override init() {
        super.init()
        
        datasource = DatasourceManager.sharedInstance.StatusScreen1DS
        dataResponse = self
    }
	
	override func viewDidLoad() {
        super.viewDidLoad()

		AnalyticsManager.sharedInstance?.analytics?.logPage("{StatusScreen1DS.Employee}")
		
		
		textLabel1Header = createHeaderLabel("Status")
		addSubview(textLabel1Header)	
		
		textLabel1 = createLabel(textColor: UIColor(rgb: 0x313131))
		addSubview(textLabel1)	
		
		textLabel2Header = createHeaderLabel("Start Date")
		addSubview(textLabel2Header)	
		
		textLabel2 = createLabel(textColor: UIColor(rgb: 0x313131))
		addSubview(textLabel2)	
		
		textLabel3Header = createHeaderLabel("End Date")
		addSubview(textLabel3Header)	
		
		textLabel3 = createLabel(textColor: UIColor(rgb: 0x313131))
		addSubview(textLabel3)	
		
		textLabel4Header = createHeaderLabel("Location")
		addSubview(textLabel4Header)	
		
		textLabel4 = createLabel(textColor: UIColor(rgb: 0x313131))
		addSubview(textLabel4)	
		
		textLabel4Button = createButton(Images.location)
        addSubview(textLabel4Button)
		 
		behaviors.append(ShareBehavior(dataViewController: self))
		behaviors.append(UpdateBehavior<StatusFormViewController, StatusScreen1DSItem>(dataViewController: self))
		behaviors.append(DeleteBehavior(dataViewController: self))

        for behavior in self.behaviors {
            behavior.load()
        }
		
		updateViewConstraints()
		
		loadData()
	}
    
    override func updateViewConstraints() {
        
        if !didSetupConstraints {
            
            didSetupConstraints = true
            setupConstraints()
        }
        super.updateViewConstraints()
    }

	func setupConstraints() {
        
        let views:[String: UIView] = [
            "scrollView": scrollView,
            "contentView": contentView,
			"textLabel1Header": textLabel1Header, 
			"textLabel1": textLabel1,
			"textLabel2Header": textLabel2Header, 
			"textLabel2": textLabel2,
			"textLabel3Header": textLabel3Header, 
			"textLabel3": textLabel3,
			"textLabel4Header": textLabel4Header, 
			"textLabel4": textLabel4,
			"textLabel4Button": textLabel4Button,
        ]
        
        let metrics:[String: CGFloat] = [
            "zero": Dimens.Margins.none,
            "margin": Dimens.Margins.large,
            "buttonSize": Dimens.Sizes.small
        ]
		
		contentView.removeConstraints(contentConstraints)
        scrollView.removeConstraints(scrollConstraints)
        view.removeConstraints(mainConstraints)
		
		scrollView.translatesAutoresizingMaskIntoConstraints = false
		mainConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|[scrollView]|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
        
        mainConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:|[scrollView]|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
        
		contentView.translatesAutoresizingMaskIntoConstraints = false
        scrollConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|[contentView(==scrollView)]|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
        
        scrollConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:|[contentView]|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
			
		textLabel1Header.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel1Header]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
			
		textLabel1.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel1]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel2Header.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel2Header]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
			
		textLabel2.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel2]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel3Header.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel3Header]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
			
		textLabel3.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel3]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel4Header.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel4Header]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
			
		textLabel4.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel4]-margin-[textLabel4Button(buttonSize)]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel4Button.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:[textLabel4Button(buttonSize)]",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		contentConstraints.append(NSLayoutConstraint(item: textLabel4Button,
            attribute: .CenterY,
            relatedBy: .Equal,
            toItem: textLabel4,
            attribute: .CenterY,
            multiplier: 1.0,
            constant: 0))
			
		contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:|-margin-[textLabel1Header]-margin-[textLabel1]-margin-[textLabel2Header]-margin-[textLabel2]-margin-[textLabel3Header]-margin-[textLabel3]-margin-[textLabel4Header]-margin-[textLabel4]-(>=margin)-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))

		view.addConstraints(mainConstraints)
        contentView.addConstraints(contentConstraints)
        scrollView.addConstraints(scrollConstraints)
	}
}

extension StatusDetailViewController: DataResponse {

    func success() {
        
        navigationItem.title = item?.employee
        
 		textLabel1.text = item?.status
		
		textLabel2.text = String(datetime: item?.startDate)
		
		textLabel3.text = String(datetime: item?.endDate)
		
		textLabel4.text = "Find on map"
		
		setAction(MapAction(uri: String(geoPoint: item?.location)), view: textLabel4)
		setAction(MapAction(uri: String(geoPoint: item?.location)), view: textLabel4Button)
		 
       
    }
    
    func failure(error: NSError?) {
        ErrorManager.show(error, rootController: self)
    }
}


