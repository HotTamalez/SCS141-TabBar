//
//  TaskViewController.swift
//  IInClassTabBar
//
//  Created by zweakland on 4/1/21.
//

import UIKit

class TaskViewController: UIViewController {

    @IBOutlet weak var taskLabel: UILabel!
    @IBOutlet weak var imposterImage: UIImageView!
    @IBOutlet weak var progressBar: UIProgressView!
    
    // variable to hold our progress value
    var progress = Progress(totalUnitCount: 50)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        taskLabel.text = ""
        // set the progress status to 0
        progressBar.setProgress(0.0, animated: true)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func startTask(_ sender: Any) {
        // generate a random number
        let randomNum = Int.random(in: 0...1)
        print(randomNum)
        
        // reset the progress made
        progress.completedUnitCount = 0
        // reset text & image
        taskLabel.text = ""
        imposterImage.image = nil
        
        
        // create timer, updates every second
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (timer) in
        
            if self.progress.isFinished {
                // stop the timer
                timer.invalidate()
                // update text and reset progress
                self.taskLabel.text = "Task Completed"
                self.progressBar.setProgress(0.0, animated: true)
            } else {
                if randomNum != 1 {
                // update the progress bar
                self.progress.completedUnitCount += 1
                // convert to float data type
                let progressFloat = Float(self.progress.fractionCompleted)
                self.progressBar.setProgress(progressFloat, animated: true)
                } else {
                    // random number is 3
                    // stops the timer
                    timer.invalidate()
                    
                    // show the imposter image
                    self.imposterImage.image = UIImage(named: "impostor")
                    self.taskLabel.text = "Eliminated"
                }
            }
            
            
        }
        
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
