//
//  SecondScreen.swift
//  SymptomTracker3
//
//  Created by Saf on 5/29/22.
//

import UIKit

//Initializing global variables
var listIsEmpty = true
var mindSeverity: [Int] = [0,0,0]
var energySeverity: [Int] = [0,0,0]
var lifestyleChanges = ""

class CheckinViewController: UIViewController{
    
    //Initializing all of the elements on the screen that are relevant to my decisions.
    @IBOutlet weak var lifestyleText: UITextView!
    @IBOutlet weak var symptom1: UILabel!
    @IBOutlet weak var symptom2: UILabel!
    @IBOutlet weak var symptom3: UILabel!
    @IBOutlet weak var severitySelect1: UISegmentedControl!
    @IBOutlet weak var severitySelect2: UISegmentedControl!
    @IBOutlet weak var severitySelect3: UISegmentedControl!
    @IBOutlet weak var menu: UISegmentedControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Function used to reset everything if the user has already completed all data available for that checkin. No parameters or returns.
    func resetEverything(){
        mindSeverity = [0,0,0]
        energySeverity = [0,0,0]
        listIsEmpty = true
    }
    
    //This is the main menu at the bottom of the screen. This function represents whenever another segment is selected (action).
    @IBAction func menu(_ sender: UISegmentedControl) {
        //SWITCH: Using a switch case to see which of the indexes is selected in the menu.
        switch menu.selectedSegmentIndex{
            //First index
        case 0:
            //This is used to store whatever the user previously selected. If they selected nothing, it resets to 0 by default.
            severitySelect1.selectedSegmentIndex=mindSeverity[0]
            severitySelect2.selectedSegmentIndex=mindSeverity[1]
            severitySelect3.selectedSegmentIndex=mindSeverity[2]
            //Setting the labels to the other symptoms
            symptom1.text = "Brain Fog"
            symptom2.text = "Slurred Speech"
            symptom3.text = "Poor Memory"
            
            break;
        case 1:
            severitySelect1.selectedSegmentIndex=energySeverity[0]
            severitySelect2.selectedSegmentIndex=energySeverity[1]
            severitySelect3.selectedSegmentIndex=energySeverity[2]
            symptom1.text = "Fatigue"
            symptom2.text = "Lethargy"
            symptom3.text = "Restlessness"
            break;
        default:
            break;
        }
    }
    
    //FUNCTION This is when the first symptoms segmentIndex was selected. It is action based.
    @IBAction func selection1(_ sender: Any) {
        //Checking which of the indexes are selected for the main menu.
        switch menu.selectedSegmentIndex{
            //Based on the selected main menu index, you should 
        case 0:
            mindSeverity[0]=severitySelect1.selectedSegmentIndex
            break
        case 1:
            energySeverity[0]=severitySelect1.selectedSegmentIndex
            break
        default:
            break;
        }
    }
    @IBAction func selection2(_ sender: Any) {
        switch menu.selectedSegmentIndex{
        case 0:
            mindSeverity[1]=severitySelect2.selectedSegmentIndex
            break;
        case 1:
            energySeverity[1]=severitySelect2.selectedSegmentIndex
            break;
        default:
            break;
        }
    }
    @IBAction func selection3(_ sender: Any) {
        
        switch menu.selectedSegmentIndex{
        case 0:
            mindSeverity[2]=severitySelect3.selectedSegmentIndex
            break;
        case 1:
            energySeverity[2]=severitySelect3.selectedSegmentIndex
            break
        default:
            break;
        }
    }
    @IBAction func submit(_ sender: Any) {
        listIsEmpty=false
    }
    
    @IBAction func homeScreenReport(_ sender: Any){
        if listIsEmpty{
            let storyboard = UIStoryboard(name: "Main", bundle: nil);
            let vc = storyboard.instantiateViewController(withIdentifier: "errorScreen");
            self.present(vc, animated: true, completion: nil);
        }else{
            let storyboard = UIStoryboard(name: "Main", bundle: nil);
            let vc = storyboard.instantiateViewController(withIdentifier: "outputScreen");
            self.present(vc, animated: true, completion: nil);
        }
    }
    
    func getmindSeverity()->Array<Int>{
        return mindSeverity
    }
    
    func getEnergySeverity()->Array<Int>{
        return energySeverity
    }
    
    @IBAction func finalSubmit(_ sender: Any) {
        lifestyleChanges = lifestyleText.text
    }
    func getLifestyleText() -> String{
        return lifestyleChanges
    }
    
    
}
