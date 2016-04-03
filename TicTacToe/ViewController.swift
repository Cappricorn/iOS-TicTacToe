//
//  ViewController.swift
//  TicTacToe
//
//  Created by Lukas Schramm on 07.12.14.
//  Copyright (c) 2014 Dabendorf. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        buttonList.append(namebutton11)
        buttonList.append(namebutton12)
        buttonList.append(namebutton13)
        buttonList.append(namebutton21)
        buttonList.append(namebutton22)
        buttonList.append(namebutton23)
        buttonList.append(namebutton31)
        buttonList.append(namebutton32)
        buttonList.append(namebutton33)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var buttonList : [UIButton] =  []
    
    var buttons = [Int](count: 9, repeatedValue: 0)
    var spieler = 1
    var reihe = 0 // 0 oder 1
    var punkte1 = 0
    var punkte2 = 0
    var remis = 0
    var gesamt = 0
    var spielende = false
    var runde = 1
    var field = 0

    @IBOutlet weak var labelTop: UILabel!
    @IBOutlet weak var namebutton11: UIButton!
    @IBOutlet weak var namebutton12: UIButton!
    @IBOutlet weak var namebutton13: UIButton!
    @IBOutlet weak var namebutton21: UIButton!
    @IBOutlet weak var namebutton22: UIButton!
    @IBOutlet weak var namebutton23: UIButton!
    @IBOutlet weak var namebutton31: UIButton!
    @IBOutlet weak var namebutton32: UIButton!
    @IBOutlet weak var namebutton33: UIButton!
    
    @IBAction func button11(sender: UIButton) {
        buttons[0] = tapped(buttons[0], name: buttonList[0])
        sieg()
    }
    
    @IBAction func button12(sender: UIButton) {
        buttons[1] = tapped(buttons[1], name: buttonList[1])
        sieg()
    }
    
    @IBAction func button13(sender: UIButton) {
        buttons[2] = tapped(buttons[2], name: buttonList[2])
        sieg()
    }
    
    @IBAction func button21(sender: UIButton) {
        buttons[3] = tapped(buttons[3], name: buttonList[3])
        sieg()
    }
    
    @IBAction func button22(sender: UIButton) {
        buttons[4] = tapped(buttons[4], name: buttonList[4])
        sieg()
    }
    
    @IBAction func button23(sender: UIButton) {
        buttons[5] = tapped(buttons[5], name: buttonList[5])
        sieg()
    }
    
    @IBAction func button31(sender: UIButton) {
        buttons[6] = tapped(buttons[6], name: buttonList[6])
        sieg()
    }
    
    @IBAction func button32(sender: UIButton) {
        buttons[7] = tapped(buttons[7], name: buttonList[7])
        sieg()
    }
    
    @IBAction func button33(sender: UIButton) {
        buttons[8] = tapped(buttons[8], name: buttonList[8])
        sieg()
    }
    
    func sieg() {
        //horizontally
        for i in 0...2 {
            if buttons[0+3*i] == buttons[1+3*i] && buttons[0+3*i] == buttons[2+3*i] && buttons[0+3*i] != 0 {
                for j in 0...2 {
                    buttonList[3*i+j].backgroundColor = UIColor.orangeColor()
                    reihe = 1
                }
            }
        }
        
        //vertically
        for i in 0...2 {
            if buttons[i] == buttons[i+3] && buttons[i] == buttons[i+6] && buttons[i] != 0 {
                for j in 0...2 {
                    buttonList[i+3*j].backgroundColor = UIColor.orangeColor()
                    reihe = 1
                }
            }
        }
        
        //diagonally
        if buttons[0] == buttons[4] && buttons[0] == buttons[8] && buttons[0] != 0 {
            buttonList[0].backgroundColor = UIColor.orangeColor()
            buttonList[4].backgroundColor = UIColor.orangeColor()
            buttonList[8].backgroundColor = UIColor.orangeColor()
            reihe = 1
        } else if buttons[2] == buttons[4] && buttons[2] == buttons[6] && buttons[2] != 0 {
            buttonList[2].backgroundColor = UIColor.orangeColor()
            buttonList[4].backgroundColor = UIColor.orangeColor()
            buttonList[6].backgroundColor = UIColor.orangeColor()
            reihe = 1
        }
        
        if buttons[0] != 0 && buttons[1] != 0 && buttons[2] != 0 && buttons[3] != 0 && buttons[4] != 0 && buttons[5] != 0 && buttons[6] != 0 && buttons[7] != 0 && buttons[8] != 0 {
            remis += 1
            gesamt = remis + punkte1 + punkte2
            labelTop.text = "Unentschieden! Schon insgesamt \(remis) mal. Und das auf \(gesamt) Partien!"
            pause()
            _ = NSTimer.scheduledTimerWithTimeInterval(5.0, target: self, selector: #selector(ViewController.someSelector), userInfo: nil, repeats: false)
        }
        if reihe != 0 {
            if spieler == 1 {
                punkte2 += 1
                labelTop.text = "Spieler 2 hat gewonnen!\nEs steht \(punkte1) zu \(punkte2)"
                spielende = true
            } else {
                punkte1 += 1
                labelTop.text = "Spieler 1 hat gewonnen!\nEs steht \(punkte1) zu \(punkte2)"
                spielende = true
            }
            pause()
            _ = NSTimer.scheduledTimerWithTimeInterval(5.0, target: self, selector: #selector(ViewController.someSelector), userInfo: nil, repeats: false)
            //function doesn't care about the timer and is starting the new game immediately
        }
    }
    
    func restart() {
        spielende = false
        for i in 0 ..< buttons.count {
            buttons[i] = 0
        }
        
        reihe = 0
        runde += 1
        if runde%2 == 0 {
            spieler = 2
            labelTop.text = "Spieler 2 beginnt diese Runde"
        } else {
            spieler = 1
            labelTop.text = "Spieler 1 beginnt diese Runde"
        }
        
        for i in 0..<buttonList.count {
            buttonList[i].setBackgroundImage(UIImage(named: "default.png"), forState: UIControlState.Normal)
        }
        
        goOn()
    }
    
    func someSelector() {
        restart()
    }
    
    func tapped(button: Int, name: UIButton) -> Int {
        name.userInteractionEnabled = false
        field = button
        if button == 0 && spielende == false {
            if spieler == 1 {
                name.setBackgroundImage(UIImage(named: "cross.png"), forState: UIControlState.Normal)
                field = 1
                spieler = 2
            } else {
                name.setBackgroundImage(UIImage(named: "ring.png"), forState: UIControlState.Normal)
                field = 2
                spieler = 1
            }
        }
        return field
    }
    
    func pause() {
        for i in 0..<buttonList.count {
            buttonList[i].userInteractionEnabled = false
        }
    }
    
    func goOn() {
        for i in 0..<buttonList.count {
            buttonList[i].userInteractionEnabled = true
        }
    }
}