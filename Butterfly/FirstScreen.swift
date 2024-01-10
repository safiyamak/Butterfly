//
//  File.swift
//  SymptomTracker3
//
//  Created by Saf on 5/28/22.
//

import UIKit

class TestViewController: UIViewController{
    
    //Creating an outlet or object with attributes for the username and password text fields.
    //These are both linked to the UI View Controller for the login screen. These are linked
    //via Class.
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    //Initializing the correct username and password, using LET variables so they don't change. Similar to static in java.
    let correctUser = "test"
    let correctPass = "testing2"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
    }
    
    //Function used if the submit button is clicked.
    @IBAction func submit(_ sender: Any) {
        let userInput = username.text
        let passInput = password.text
        //Resetting the username and password fields.
        username.text=""
        password.text=""
        //IF the user input matches the username and password, switch to the home screen. ELSE present the screen saying their username/password was incorrect.
        if (userInput == correctUser && passInput == correctPass){
            //Initialzing main storyboard
            let storyboard = UIStoryboard(name: "Main", bundle: nil);
            //The "vc" variable uses the main storyboard to identify it's next screen
            let vc = storyboard.instantiateViewController(withIdentifier: "secondScreen") ;
            self.present(vc, animated: true, completion: nil);
        } else {
            //Similar process to previous IF statement, however it uses the "wrongScreen" identifier instead of "secondScreen"
            let storyboard = UIStoryboard(name: "Main", bundle: nil);
            let wrong = storyboard.instantiateViewController(withIdentifier: "wrongScreen") ;
            self.present(wrong, animated: true, completion: nil);
        }
    }
}
