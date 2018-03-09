//
//  ItemAddViewController.swift
//  JunkFood-Agrawal
//
//  Created by Agrawal,Abhijeet P on 3/8/18.
//  Copyright © 2018 LTCITE. All rights reserved.
//

import UIKit

class ItemAddViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet weak var noOfCalTF: UITextField!
    
    @IBOutlet weak var foodNameTF: UITextField!
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "newItemAdd"{
            if let cal = Double(noOfCalTF.text!){
                AppDelegate.model.appendNewItemToFoodList(foodNameTF.text!, cal)
            }else{
                print("Invalid input")
            }
        }
    }


}
