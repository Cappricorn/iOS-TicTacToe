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
        // Do any additional setup after loading the view, typically from a nib.
    }
    var button11 = 0
    var button12 = 0
    var button13 = 0
    var button21 = 0
    var button22 = 0
    var button23 = 0
    var button31 = 0
    var button32 = 0
    var button33 = 0
    var spieler = 1
    var reihe = 0
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
        button11 = tapped(button11, name: namebutton11)
        sieg()
    }
    
    @IBAction func button12(sender: UIButton) {
        button12 = tapped(button12, name: namebutton12)
        sieg()
    }
    
    @IBAction func button13(sender: UIButton) {
        button13 = tapped(button13, name: namebutton13)
        sieg()
    }
    
    @IBAction func button21(sender: UIButton) {
        button21 = tapped(button21, name: namebutton21)
        sieg()
    }
    
    @IBAction func button22(sender: UIButton) {
        button22 = tapped(button22, name: namebutton22)
        sieg()
    }
    
    @IBAction func button23(sender: UIButton) {
        button23 = tapped(button23, name: namebutton23)
        sieg()
    }
    
    @IBAction func button31(sender: UIButton) {
        button31 = tapped(button31, name: namebutton31)
        sieg()
    }
    
    @IBAction func button32(sender: UIButton) {
        button32 = tapped(button32, name: namebutton32)
        sieg()
    }
    
    @IBAction func button33(sender: UIButton) {
        button33 = tapped(button33, name: namebutton33)
        sieg()
    }
    
    func sieg() {
        if button11 == button12 && button11 == button13 && button11 != 0 {
            namebutton11.backgroundColor = UIColor.orangeColor()
            namebutton12.backgroundColor = UIColor.orangeColor()
            namebutton13.backgroundColor = UIColor.orangeColor()
            reihe = 1
        } else if button21 == button22 && button21 == button23 && button21 != 0 {
            namebutton21.backgroundColor = UIColor.orangeColor()
            namebutton22.backgroundColor = UIColor.orangeColor()
            namebutton23.backgroundColor = UIColor.orangeColor()
            reihe = 2
        } else if button31 == button32 && button31 == button33 && button31 != 0 {
            namebutton31.backgroundColor = UIColor.orangeColor()
            namebutton32.backgroundColor = UIColor.orangeColor()
            namebutton33.backgroundColor = UIColor.orangeColor()
            reihe = 3
        } else if button11 == button21 && button11 == button31 && button11 != 0 {
            namebutton11.backgroundColor = UIColor.orangeColor()
            namebutton21.backgroundColor = UIColor.orangeColor()
            namebutton31.backgroundColor = UIColor.orangeColor()
            reihe = 4
        } else if button12 == button22 && button12 == button32 && button12 != 0 {
            namebutton12.backgroundColor = UIColor.orangeColor()
            namebutton22.backgroundColor = UIColor.orangeColor()
            namebutton32.backgroundColor = UIColor.orangeColor()
            reihe = 5
        } else if button13 == button23 && button13 == button33 && button13 != 0 {
            namebutton13.backgroundColor = UIColor.orangeColor()
            namebutton23.backgroundColor = UIColor.orangeColor()
            namebutton33.backgroundColor = UIColor.orangeColor()
            reihe = 6
        } else if button11 == button22 && button11 == button33 && button11 != 0 {
            namebutton11.backgroundColor = UIColor.orangeColor()
            namebutton22.backgroundColor = UIColor.orangeColor()
            namebutton33.backgroundColor = UIColor.orangeColor()
            reihe = 7
        } else if button13 == button22 && button13 == button31 && button13 != 0 {
            namebutton13.backgroundColor = UIColor.orangeColor()
            namebutton22.backgroundColor = UIColor.orangeColor()
            namebutton31.backgroundColor = UIColor.orangeColor()
            reihe = 8
        }
        if button11 != 0 && button12 != 0 && button13 != 0 && button21 != 0 && button22 != 0 && button23 != 0 && button31 != 0 && button32 != 0 && button33 != 0 {
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
    
    func neustart() {
        spielende = false
        button11 = 0
        button12 = 0
        button13 = 0
        button21 = 0
        button22 = 0
        button23 = 0
        button31 = 0
        button32 = 0
        button33 = 0
        reihe = 0
        runde += 1
        if runde%2 == 0 {
            spieler = 2
            labelTop.text = "Spieler 2 beginnt diese Runde"
        } else {
            spieler = 1
            labelTop.text = "Spieler 1 beginnt diese Runde"
        }
        namebutton11.setBackgroundImage(UIImage(named: "default.png"), forState: UIControlState.Normal)
        namebutton12.setBackgroundImage(UIImage(named: "default.png"), forState: UIControlState.Normal)
        namebutton13.setBackgroundImage(UIImage(named: "default.png"), forState: UIControlState.Normal)
        namebutton21.setBackgroundImage(UIImage(named: "default.png"), forState: UIControlState.Normal)
        namebutton22.setBackgroundImage(UIImage(named: "default.png"), forState: UIControlState.Normal)
        namebutton23.setBackgroundImage(UIImage(named: "default.png"), forState: UIControlState.Normal)
        namebutton31.setBackgroundImage(UIImage(named: "default.png"), forState: UIControlState.Normal)
        namebutton32.setBackgroundImage(UIImage(named: "default.png"), forState: UIControlState.Normal)
        namebutton33.setBackgroundImage(UIImage(named: "default.png"), forState: UIControlState.Normal)
        
        goOn()
    }
    
    func someSelector() {
        neustart()
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
        namebutton11.userInteractionEnabled = false
        namebutton12.userInteractionEnabled = false
        namebutton13.userInteractionEnabled = false
        namebutton21.userInteractionEnabled = false
        namebutton22.userInteractionEnabled = false
        namebutton23.userInteractionEnabled = false
        namebutton31.userInteractionEnabled = false
        namebutton32.userInteractionEnabled = false
        namebutton33.userInteractionEnabled = false
    }
    
    func goOn() {
        namebutton11.userInteractionEnabled = true
        namebutton12.userInteractionEnabled = true
        namebutton13.userInteractionEnabled = true
        namebutton21.userInteractionEnabled = true
        namebutton22.userInteractionEnabled = true
        namebutton23.userInteractionEnabled = true
        namebutton31.userInteractionEnabled = true
        namebutton32.userInteractionEnabled = true
        namebutton33.userInteractionEnabled = true
    }
}


