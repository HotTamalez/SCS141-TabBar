//
//  RedViewController.swift
//  IInClassTabBar
//
//  Created by zweakland on 3/23/21.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func VoteForRed(_ sender: Any) {
        (parent as! ManagementTabViewController).vote = "Red"
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
