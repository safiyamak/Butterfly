//
//  ReportScreen.swift
//  SymptomTracker3
//
//  Created by Saf on 5/31/22.
//

import UIKit

//Initializing the global variables. These call from the checkin class to get the list.
var symptom1Severity = CheckinViewController().getmindSeverity()
var symptom2Severity = CheckinViewController().getEnergySeverity()


//Initializing the symptom names, while we could use the ones from the CheckinViewController class, I decided to just retype.
var mindSymptomNames: [String] = ["Brain Fog", "Slurred Speech","Poor Memory"]
var organizingMindNames: [String] = ["Brain Fog", "Slurred Speech","Poor Memory"]
var energySymptomNames: [String] = ["Fatigue","Lethargy","Restlessness"]
var organizingEnergyNames: [String] = ["Fatigue","Lethargy","Restlessness"]

class ReportViewController: UIViewController {
    
    //These are the labels and text views on the screen. I am making an outlet in order to access the attributes of the element.
    @IBOutlet weak var lifestyleTitle: UILabel!
    @IBOutlet weak var symptomsOutput: UITextView!
    @IBOutlet weak var lifestyleOutput: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //We are initializing these variables again in case the user has clicked on this screen for the second time.
        mindSymptomNames = ["Brain Fog", "Slurred Speech","Poor Memory"]
        organizingEnergyNames = ["Brain Fog", "Slurred Speech","Poor Memory"]
        energySymptomNames = ["Fatigue","Lethargy","Restlessness"]
        organizingEnergyNames = ["Fatigue","Lethargy","Restlessness"]
        symptom1Severity = CheckinViewController().getmindSeverity()
        symptom2Severity = CheckinViewController().getEnergySeverity()
        //FOR LOOP: Adding one to each of the elements in the array.
        for i in 0...2{
            symptom1Severity[i] = symptom1Severity[i]+1
            symptom2Severity[i] = symptom2Severity[i]+1
        }
        
        var maxMindOccurs = 0
        var maxEnergyOccurs = 0
        
        //This is to find the maximum severity in each of the lists. The ! is used to force unwrap the integer.
        let maxEnergy = symptom2Severity.max()! as Array<Int>.Index
        let maxMind = symptom1Severity.max()! as Array<Int>.Index
        
        //FOR LOOP: For each of the times the maximum occurs in the list, increase the maxMindOccurs variable by one.
        for i in 0...2{ //The length of the array is 2.
            if symptom1Severity[i]==maxMind{
                maxMindOccurs+=1
            }
            if symptom2Severity[i]==maxEnergy{
                maxEnergyOccurs+=1
            }
        }
        
        //FOR LOOP: For the length of the array, IF the element in the array is NOT the maximum, start adding it to the end. I had to hard code the middle value because it was not functioning properly.
        for i in 0...2{ //The length of the array is 2.
            if symptom1Severity[i] != (maxMind as Int){
                if i == 2{
                    mindSymptomNames[1] = organizingMindNames[i]
                } else {
                    mindSymptomNames[2-i] = organizingMindNames[i]
                }
            }
            if symptom2Severity[i] != maxEnergy as Int{
                if i == 2{
                    energySymptomNames[1] = organizingEnergyNames[i]
                } else {
                    energySymptomNames[2-i] = organizingEnergyNames[i]
                }
            }
        }
        
        //Storing the index of the energy where the max occurs.
        var energyIndex = symptom2Severity.firstIndex(of: maxEnergy)!
        //Adding the max into the first index of the list.
        energySymptomNames[0] = organizingEnergyNames[energyIndex]
        symptom2Severity[energyIndex]=0
        
        var mindIndex = symptom1Severity.firstIndex(of: maxMind)!
        mindSymptomNames[0] = organizingMindNames[mindIndex]
        symptom1Severity[mindIndex]=0
        
        //IF the max is still in the list, do the same thing again.
        if symptom1Severity.contains(maxMind){
            mindIndex = symptom1Severity.firstIndex(of: maxMind)!
            mindSymptomNames[1] = organizingMindNames[mindIndex]
            symptom1Severity[mindIndex]=0
        }
        
        if symptom2Severity.contains(maxEnergy){
            energyIndex = symptom2Severity.firstIndex(of: maxEnergy)!
            energySymptomNames[1] = organizingEnergyNames[energyIndex]
            symptom2Severity[energyIndex]=0
        }
        //OUTPUTTING the data
        symptomsOutput.text = "Mind:"
        //FOR the number of times the maximum occurs, ADD the symptom name to the output
        for i in 0...maxMindOccurs{
            if i < maxMindOccurs{
                symptomsOutput.text += "\n"+mindSymptomNames[i]
            }
        }
        symptomsOutput.text += "\nEnergy:"
        for i in 0...maxEnergyOccurs{
            if i < maxEnergyOccurs{
                symptomsOutput.text += "\n"+energySymptomNames[i]
            }
        }
        
        //OUTPUTTING the lifestyle changes the user previously entered.
        lifestyleOutput.text = CheckinViewController().getLifestyleText()
        if CheckinViewController().getLifestyleText().isEmpty{
            lifestyleOutput.text = "None"
        }
    }
    //IF the user is done reading, reset everything so they can use it again.
    @IBAction func submitted(_ sender: Any) {
        CheckinViewController().resetEverything()
        
    }
    
}

