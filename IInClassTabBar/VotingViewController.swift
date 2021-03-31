//
//  VotingViewController.swift
//  IInClassTabBar
//
//  Created by zweakland on 3/23/21.
//

import UIKit

class VotingViewController: UIViewController {

    @IBOutlet weak var voteLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        voteLabel.text = (parent as! ManagementTabViewController).vote
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
