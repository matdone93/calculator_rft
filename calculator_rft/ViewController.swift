//
//  ViewController.swift
//  calculator_rft
//
//  Created by Cactus Joe on 26/11/15.
//  Copyright © 2015 Cactus Joe. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var konstans1:Float = 0
    var konstans2:Float = 0
    let szamolo = Szamolas()
    var muvelet = "valami"
    var proba = Szamolas()
    
   

    @IBOutlet var ertekek: UILabel!
    
    @IBAction func eredmeny(sender: UIButton) {
        print("error occurred on line \(__LINE__) in function \(__FUNCTION__)")
//        print(proba.Osszeadas(4, b: 6))
        print("ertekeke"+ertekek.text!)
        if ertekek.text != "" {
            print("Bejottem bazdmeg, nem erted??")
            konstans2 = Float(ertekek.text!)!
            switch (muvelet) {
                case "add":
                ertekek.text = szamolo.Osszeadas(konstans1, b: konstans2)
                case "kivonas":
                ertekek.text = szamolo.Osszeadas(konstans1, b: -konstans2)
                case "szorzas":
                ertekek.text = szamolo.Szorzas(konstans1, b: konstans2)
                case "osztas":
                ertekek.text = szamolo.Szorzas(konstans1, b: (1/konstans2))
            default:
                print("Sikerult")
            }
            
            
        }
    }
    @IBAction func szorzas(sender: UIButton) {
        if ertekek.text != "" {
            konstans1 = Float(ertekek.text!)!
            muvelet = "szorzas"
            ertekek.text = ""
            print("error occurred on line \(__LINE__) in function \(__FUNCTION__)")
        }
    }
    @IBAction func osztas(sender: UIButton) {
        if ertekek.text != "" {
            konstans1 = Float(ertekek.text!)!
            muvelet = "osztas"
            ertekek.text = ""
            print("error occurred on line \(__LINE__) in function \(__FUNCTION__)")
        }
    }
    @IBAction func kivonas(sender: UIButton) {
        if ertekek.text != "" {
            konstans1 = Float(ertekek.text!)!
            muvelet = "kivonas"
            ertekek.text = ""
            print("error occurred on line \(__LINE__) in function \(__FUNCTION__)")
        }
    }
    @IBAction func adding(sender: UIButton) {
        if ertekek.text != "" {
            konstans1 = Float(ertekek.text!)!
            muvelet = "add"
            ertekek.text = ""
            print("error occurred on line \(__LINE__) in function \(__FUNCTION__)")
        }
        
    }
    @IBAction func elojel(sender: UIButton) {
        
        let value: Float? = Float(ertekek.text!)
        if value != nil {
            let ujertek = value! * -1
            ertekek.text = String(ujertek)
            print("error occurred on line \(__LINE__) in function \(__FUNCTION__)")

        }
        
        
    }
    @IBAction func clear(sender: UIButton) {
        ertekek.text = "0"
        print("error occurred on line \(__LINE__) in function \(__FUNCTION__)")
    }
    @IBAction func nine(sender: UIButton) {
        ertekek.text! += "9"
        print("error occurred on line \(__LINE__) in function \(__FUNCTION__)")
    }
    @IBAction func eight(sender: UIButton) {
        ertekek.text! += "8"
        print("error occurred on line \(__LINE__) in function \(__FUNCTION__)")
    }
    @IBAction func seven(sender: UIButton) {
        ertekek.text! += "7"
        print("error occurred on line \(__LINE__) in function \(__FUNCTION__)")
    }
    @IBAction func six(sender: UIButton) {
        ertekek.text! += "6"
        print("error occurred on line \(__LINE__) in function \(__FUNCTION__)")
    }
    @IBAction func five(sender: UIButton) {
        ertekek.text! += "5"
        print("error occurred on line \(__LINE__) in function \(__FUNCTION__)")
    }
    @IBAction func four(sender: UIButton) {
        ertekek.text! += "4"
        print("error occurred on line \(__LINE__) in function \(__FUNCTION__)")
    }
        @IBAction func three(sender: UIButton) {
        ertekek.text! += "3"
            print("error occurred on line \(__LINE__) in function \(__FUNCTION__)")
    }
    @IBAction func two(sender: UIButton) {
        ertekek.text! += "2"
        print("error occurred on line \(__LINE__) in function \(__FUNCTION__)")
        
    }
        @IBAction func one(sender: UIButton) {
        ertekek.text! += "1"
            print("error occurred on line \(__LINE__) in function \(__FUNCTION__)")
    }
    
    @IBAction func zero(sender: UIButton) {
        if ertekek.text != "0" {
            ertekek.text! += "0"
        }
        else {
            ertekek.text = "0"
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

