//
//  SecondViewController.swift
//  Bootcamp_Week3
//
//  Created by Ali serkan Boyracı  on 19.12.2022.
//

import UIKit

protocol MyDataSendingDelegateProtocol {
    func sendDataToFirstViewController(myData: String)
}

class SecondViewController: UIViewController {


    @IBOutlet weak var dataTextField: UITextField!
    
    var delegate: MyDataSendingDelegateProtocol? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func sendDataButtonClicked(_ sender: Any) {
        if self.delegate != nil && self.dataTextField.text != nil {
            let dataToBeSent = self.dataTextField.text
            self.delegate?.sendDataToFirstViewController(myData: dataToBeSent!)
            dismiss(animated: true, completion: nil)
        }
    }
}
