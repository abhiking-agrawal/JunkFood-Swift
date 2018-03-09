//
//  ReportViewController.swift
//  JunkFood-Agrawal
//
//  Created by LTCITE on 3/8/18.
//  Copyright © 2018 LTCITE. All rights reserved.
//

import UIKit

class ReportViewController: UIViewController {

    @IBOutlet weak var overviewVF: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        AppDelegate.model.loadData()
        overviewVF.text = AppDelegate.model.combinedReport()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func resetBTN(_ sender: UIButton) {
        AppDelegate.model.reset()
        overviewVF.text = AppDelegate.model.combinedReport()
    }
    
    @IBAction func unwindFromTable(segue:UIStoryboardSegue){
        overviewVF.text = AppDelegate.model.combinedReport()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
