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
        if button11 == 0 && spielende == false {
            if spieler == 1 {
                namebutton11.setTitle("X", forState: UIControlState.Normal)
                namebutton11.backgroundColor = UIColor.redColor()
                button11 = 1
                spieler = 2
            } else {
                namebutton11.setTitle("O", forState: UIControlState.Normal)
                namebutton11.backgroundColor = UIColor.greenColor()
                button11 = 2
                spieler = 1
            }
            sieg()
        }
    }
    
    @IBAction func button12(sender: UIButton) {
        if button12 == 0 && spielende == false {
            if spieler == 1 {
                namebutton12.setTitle("X", forState: UIControlState.Normal)
                namebutton12.backgroundColor = UIColor.redColor()
                button12 = 1
                spieler = 2
            } else {
                namebutton12.setTitle("O", forState: UIControlState.Normal)
                namebutton12.backgroundColor = UIColor.greenColor()
                button12 = 2
                spieler = 1
            }
            sieg()
        }


    }
    
    @IBAction func button13(sender: UIButton) {
        if button13 == 0 && spielende == false {
            if spieler == 1 {
                namebutton13.setTitle("X", forState: UIControlState.Normal)
                namebutton13.backgroundColor = UIColor.redColor()
                button13 = 1
                spieler = 2
            } else {
                namebutton13.setTitle("O", forState: UIControlState.Normal)
                namebutton13.backgroundColor = UIColor.greenColor()
                button13 = 2
                spieler = 1
            }
            sieg()
        }


    }
    
    @IBAction func button21(sender: UIButton) {
        if button21 == 0 && spielende == false {
            if spieler == 1 {
                namebutton21.setTitle("X", forState: UIControlState.Normal)
                namebutton21.backgroundColor = UIColor.redColor()
                button21 = 1
                spieler = 2
            } else {
                namebutton21.setTitle("O", forState: UIControlState.Normal)
                namebutton21.backgroundColor = UIColor.greenColor()
                button21 = 2
                spieler = 1
            }
            sieg()
        }


    }
    
    @IBAction func button22(sender: UIButton) {
        if button22 == 0 && spielende == false {
            if spieler == 1 {
                namebutton22.setTitle("X", forState: UIControlState.Normal)
                namebutton22.backgroundColor = UIColor.redColor()
                button22 = 1
                spieler = 2
            } else {
                namebutton22.setTitle("O", forState: UIControlState.Normal)
                namebutton22.backgroundColor = UIColor.greenColor()
                button22 = 2
                spieler = 1
            }
            sieg()
        }


    }
    
    @IBAction func button23(sender: UIButton) {
        if button23 == 0 && spielende == false {
            if spieler == 1 {
                namebutton23.setTitle("X", forState: UIControlState.Normal)
                namebutton23.backgroundColor = UIColor.redColor()
                button23 = 1
                spieler = 2
            } else {
                namebutton23.setTitle("O", forState: UIControlState.Normal)
                namebutton23.backgroundColor = UIColor.greenColor()
                button23 = 2
                spieler = 1
            }
            sieg()
        }


    }
    
    @IBAction func button31(sender: UIButton) {
        if button31 == 0 && spielende == false {
            if spieler == 1 {
                namebutton31.setTitle("X", forState: UIControlState.Normal)
                namebutton31.backgroundColor = UIColor.redColor()
                button31 = 1
                spieler = 2
            } else {
                namebutton31.setTitle("O", forState: UIControlState.Normal)
                namebutton31.backgroundColor = UIColor.greenColor()
                button31 = 2
                spieler = 1
            }
            sieg()
        }


    }
    
    @IBAction func button32(sender: UIButton) {
        if button32 == 0 && spielende == false {
            if spieler == 1 {
                namebutton32.setTitle("X", forState: UIControlState.Normal)
                namebutton32.backgroundColor = UIColor.redColor()
                button32 = 1
                spieler = 2
            } else {
                namebutton32.setTitle("O", forState: UIControlState.Normal)
                namebutton32.backgroundColor = UIColor.greenColor()
                button32 = 2
                spieler = 1
            }
            sieg()
        }


    }
    
    @IBAction func button33(sender: UIButton) {
        if button33 == 0 && spielende == false {
            if spieler == 1 {
                namebutton33.setTitle("X", forState: UIControlState.Normal)
                namebutton33.backgroundColor = UIColor.redColor()
                button33 = 1
                spieler = 2
            } else {
                namebutton33.setTitle("O", forState: UIControlState.Normal)
                namebutton33.backgroundColor = UIColor.greenColor()
                button33 = 2
                spieler = 1
            }
                sieg()
        }


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
            print("Unentschieden! Schon insgesamt \(remis) mal. Und das auf \(gesamt) Partien!")
            _ = NSTimer.scheduledTimerWithTimeInterval(5.0, target: self, selector: #selector(ViewController.someSelector), userInfo: nil, repeats: false)
        }
        if reihe != 0 {
            if spieler == 1 {
                print("Spieler 2 hat gewonnen!")
                punkte2 += 1
                print("Es steht \(punkte1) zu \(punkte2)")
                spielende = true
            } else {
                print("Spieler 1 hat gewonnen!")
                punkte1 += 1
                print("Es steht \(punkte1) zu \(punkte2)")
                spielende = true
            }
            _ = NSTimer.scheduledTimerWithTimeInterval(5.0, target: self, selector: #selector(ViewController.someSelector), userInfo: nil, repeats: false)
            
            
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
            print("Spieler 2 beginnt diese Runde")
        } else {
            spieler = 1
            print("Spieler 1 beginnt diese Runde")
        }
        namebutton11.setTitle("", forState: UIControlState.Normal)
        namebutton11.backgroundColor = UIColor.purpleColor()
        namebutton12.setTitle("", forState: UIControlState.Normal)
        namebutton12.backgroundColor = UIColor.purpleColor()
        namebutton13.setTitle("", forState: UIControlState.Normal)
        namebutton13.backgroundColor = UIColor.purpleColor()
        namebutton21.setTitle("", forState: UIControlState.Normal)
        namebutton21.backgroundColor = UIColor.purpleColor()
        namebutton22.setTitle("", forState: UIControlState.Normal)
        namebutton22.backgroundColor = UIColor.purpleColor()
        namebutton23.setTitle("", forState: UIControlState.Normal)
        namebutton23.backgroundColor = UIColor.purpleColor()
        namebutton31.setTitle("", forState: UIControlState.Normal)
        namebutton31.backgroundColor = UIColor.purpleColor()
        namebutton32.setTitle("", forState: UIControlState.Normal)
        namebutton32.backgroundColor = UIColor.purpleColor()
        namebutton33.setTitle("", forState: UIControlState.Normal)
        namebutton33.backgroundColor = UIColor.purpleColor()
    }
    func someSelector() {
        neustart()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

