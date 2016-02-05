//
//  ViewController.swift
//  Copyright © 2016 Benjamin Vanarragon. All rights reserved.
//
//  Benjamin Vanarragon
//  February 5th, 2016
//  Simple Calculator that will provide the user with simple operations such as 
//  addition, subtraction, multiplication, and division.
//

import UIKit
//This class controls the view on the story board. It contains the methods for simple mathematic operations
class ViewController: UIViewController {
    //variables for current number, results, current operation, and labels
    @IBOutlet weak var lblResult: UILabel!
    var result = Float()
    var currentNum = Float()
    var currentOp = String()
    
    
    //function that fires automatically when the view loads, set up environment and iniate variables
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        currentOp = "="
        lblResult.text = ("\(result)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //This method fires when a number is pressed, it sets the current number to whatever the user is sending through this method. Then procedes to set the label to the current number.
    @IBAction func btnNumberInput(sender: UIButton) {
        //sets the current number to what is sent
        currentNum = currentNum * 10 + Float(sender.currentTitle!)!
        //sets the result label to the current number
        lblResult.text = ("\(currentNum)")
    }
    
    
    //This method fires when an operation button is pressed. Each case will fire when the appropriate sign is clicked. Then sets the result label to the result.
    @IBAction func btnOperation(sender: UIButton) {
        switch currentOp{
            //all the math is done here
            case "=":
                result = currentNum
            case "+":
                result = result + currentNum
            case "-":
                result = result - currentNum
            case "*":
                result = result * currentNum
            case "/":
                result = result / currentNum
            //default switch case if none are available.
        default:
                print("error")
        }
        
        currentNum = 0
        lblResult.text = ("\(result)")
        
        if(sender.titleLabel!.text == "="){
            result = 0
        }
        //sets the current operation to what is sent through the method
        currentOp = sender.titleLabel!.text! as String!
    }
    
    //When the user clicks the decimal button it appens the decimal and waits for the next number.
    @IBAction func btnDecimal(sender: UIButton) {
        //to do
        
        
    }
    //resets all variables to initial values, and clears the label		
    @IBAction func btnClear(sender: UIButton) {
        result = 0
        currentNum = 0
        currentOp = "="
        lblResult.text = ("\(result)")
    }
}

