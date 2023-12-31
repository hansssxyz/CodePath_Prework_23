//
//  ViewController.swift
//  Yihan_Shen_Codepath_1230
//
//  Created by yihan shen on 2023/12/30.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FirstNameField: UITextField!
    
    @IBOutlet weak var LastNameField: UITextField!
    
    @IBOutlet weak var SchoolNameField: UITextField!
    
    @IBOutlet weak var SchoolSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var NumberPetsLabel: UILabel!
    
    @IBOutlet weak var PetsStepper: UIStepper!
    
    @IBOutlet weak var MorePetsSwitch: UISwitch!
    
    @IBAction func SteppingChange(_ sender: UIStepper){
        NumberPetsLabel.text="\(Int(sender.value))"
    }
    
    @IBAction func IntroduceSelf(_sender: UIButton){
        // creating message
        let year = SchoolSegmentControl.titleForSegment(at: SchoolSegmentControl.selectedSegmentIndex)
        let intro="My name is \(FirstNameField.text!)\(LastNameField.text!) and I attend \(SchoolNameField.text!).\n I am currently in my \(year!) year and I own \(NumberPetsLabel.text!) pets.\n It is \(MorePetsSwitch.isOn) that I want more pets."
        // creating alert box
        let alertController = UIAlertController(title: "My Introduction", message: intro, preferredStyle: .alert)
        //allow dismiss the box once it pops up
        let dismiss_action=UIAlertAction(title:"Nice to meet you!", style: .default, handler: nil)
        alertController.addAction(dismiss_action)
        present(alertController,animated:true,completion:nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

