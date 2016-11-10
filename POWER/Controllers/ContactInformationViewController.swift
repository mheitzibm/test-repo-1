//
//  ContactInformationViewController.swift
//  POWER
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit

class ContactInformationViewController: DataViewController<Item1> {
    
    var didSetupConstraints = false

	var textLabel1Header: UILabel!
	var textLabel1: UILabel!
	var textLabel1Button: UIButton!
	
	var textLabel2Header: UILabel!
	var textLabel2: UILabel!
	var textLabel2Button: UIButton!
	
	var textLabel3Header: UILabel!
	var textLabel3: UILabel!
	var textLabel4Header: UILabel!
	var textLabel4: UILabel!
	
	
	override init() {
        super.init()
        
        datasource = DatasourceManager.sharedInstance.EmptyDatasource
        dataResponse = self
    }
	
	override func viewDidLoad() {
        super.viewDidLoad()

		AnalyticsManager.sharedInstance?.analytics?.logPage("Contact Information")
		
	  
		

		textLabel1Header = createHeaderLabel("Address")
		addSubview(textLabel1Header)	
		
		textLabel1 = createLabel()
		addSubview(textLabel1)	
		
		textLabel1Button = createButton(Images.location)
        addSubview(textLabel1Button)
		 
		textLabel2Header = createHeaderLabel("Phone Number")
		addSubview(textLabel2Header)	
		
		textLabel2 = createLabel()
		addSubview(textLabel2)	
		
		textLabel2Button = createButton(Images.phone)
        addSubview(textLabel2Button)
		 
		textLabel3Header = createHeaderLabel("Email")
		addSubview(textLabel3Header)	
		
		textLabel3 = createLabel()
		addSubview(textLabel3)	
		
		textLabel4Header = createHeaderLabel("lskfj;sakfj;lksf")
		addSubview(textLabel4Header)	
		
		textLabel4 = createLabel()
		addSubview(textLabel4)	
		
	

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
			"textLabel1Button": textLabel1Button,
			"textLabel2Header": textLabel2Header, 
			"textLabel2": textLabel2,
			"textLabel2Button": textLabel2Button,
			"textLabel3Header": textLabel3Header, 
			"textLabel3": textLabel3,
			"textLabel4Header": textLabel4Header, 
			"textLabel4": textLabel4,
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
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel1]-margin-[textLabel1Button(buttonSize)]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel1Button.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:[textLabel1Button(buttonSize)]",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		contentConstraints.append(NSLayoutConstraint(item: textLabel1Button,
            attribute: .CenterY,
            relatedBy: .Equal,
            toItem: textLabel1,
            attribute: .CenterY,
            multiplier: 1.0,
            constant: 0))
			
		textLabel2Header.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel2Header]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
			
		textLabel2.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel2]-margin-[textLabel2Button(buttonSize)]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel2Button.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:[textLabel2Button(buttonSize)]",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		contentConstraints.append(NSLayoutConstraint(item: textLabel2Button,
            attribute: .CenterY,
            relatedBy: .Equal,
            toItem: textLabel2,
            attribute: .CenterY,
            multiplier: 1.0,
            constant: 0))
			
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
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel4]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:|-margin-[textLabel1Header]-margin-[textLabel1]-margin-[textLabel2Header]-margin-[textLabel2]-margin-[textLabel3Header]-margin-[textLabel3]-margin-[textLabel4Header]-margin-[textLabel4]-(>=margin)-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))

		view.addConstraints(mainConstraints)
        contentView.addConstraints(contentConstraints)
        scrollView.addConstraints(scrollConstraints)
	}
}

extension ContactInformationViewController: DataResponse {

    func success() {
        
        navigationItem.title = ""
        
		textLabel1.text = "aaa Evergreen Dr, Clifton, New Jersey 07014, USA"
		
		setAction(MapAction(uri: "Evergreen Dr, Clifton, New Jersey 07014, USA"), view: textLabel1)
		setAction(MapAction(uri: "Evergreen Dr, Clifton, New Jersey 07014, USA"), view: textLabel1Button)
		 
		textLabel2.text = "(555) 704-3829"
		
		setAction(PhoneAction(uri: "(555) 704-3829"), view: textLabel2)
		setAction(PhoneAction(uri: "(555) 704-3829"), view: textLabel2Button)
		 
		textLabel3.text = "aaacompany@company.com"
		
		textLabel4.text = "asdfsadfsadf"
		
       
    }
    
    func failure(error: NSError?) {
        ErrorManager.show(error, rootController: self)
    }
}


