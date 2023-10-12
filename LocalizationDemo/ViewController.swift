//
//  ViewController.swift
//  LocalizationDemo
//
//  Created by Neosoft on 12/10/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblDisFirst: UILabel!
    @IBOutlet weak var lblDisLast: UILabel!
    @IBOutlet weak var lblLastName: UILabel!
    @IBOutlet weak var lblFirstName: UILabel!
    @IBOutlet weak var txtLname: UITextField!
    @IBOutlet weak var txtFname: UITextField!
    @IBOutlet weak var txtUserInformation: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func onEnterBtn(_ sender: UIButton) {
        lblFirstName.text = txtLname.text
        lblLastName.text = txtFname.text
        
    }
    @IBAction func onSegmentClickBtn(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0 : setStringValues(loc: "en")
        case 1 : setStringValues(loc: "hi")
        case 2 : setStringValues(loc: "ar")
        case 3 : setStringValues(loc: "ar")
        default: print("Some Thng Went wrong")
        }
        
        func setStringValues(loc:String){
            lblDisFirst.text = "FirstName".locString(loc: loc)
            lblDisLast.text = "LastName".locString(loc: loc)
            txtUserInformation.text = "UserData".locString(loc: loc)
        }
    }
}

extension String{
    func locString(loc : String) -> String{
        let path = Bundle.main.path(forResource: loc, ofType: "lproj") ?? ""
        let bundel = (Bundle(path: path))!
        return NSLocalizedString(self, bundle: bundel,comment: "")
    }
}

