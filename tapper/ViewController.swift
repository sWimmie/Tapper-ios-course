//
//  ViewController.swift
//  tapper
//
//  Created by Wim van Deursen on 15-09-15.
//  Copyright © 2015 sWimmie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Properties
    var maxTabs: Int = 0
    var currentTabs: Int = 0
    
    // Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTabsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tabBtn: UIButton!
    @IBOutlet weak var tabLbl: UILabel!
    
    @IBAction func onCoinTapped(sender: UIButton!){
        currentTabs++
        updateTabsLbl()
        
        if gameOver() {
            restartGame()
        }
        
    }
    
    @IBAction func onPlayButtonPressed(sender: UIButton!){
        
        
        if howManyTabsTxt.text != nil && howManyTabsTxt.text != "" {
            logoImg.hidden = true
            playBtn.hidden = true
            howManyTabsTxt.hidden = true
            tabBtn.hidden = false
            tabLbl.hidden = false
            maxTabs = Int(howManyTabsTxt.text!)!
            currentTabs = 0
            
            updateTabsLbl()
        }
    }
    
    func restartGame(){
        maxTabs = 0
        howManyTabsTxt.text = nil
        logoImg.hidden = false
        playBtn.hidden = false
        howManyTabsTxt.hidden = false
        tabBtn.hidden = true
        tabLbl.hidden = true
    }
    
    func updateTabsLbl(){
        
        tabLbl.text = "\(currentTabs) Taps"
    }
    
    func gameOver()-> Bool{
        if currentTabs >= maxTabs{
            return true
        } else {
            return false
        }
    }
    

    

}

