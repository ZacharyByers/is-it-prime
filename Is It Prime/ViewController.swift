//
//  ViewController.swift
//  Is It Prime
//
//  Created by Zachary Byers on 1/30/18.
//  Copyright © 2018 Zachary Byers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  func isPrime(_ number: Int) -> Bool {
    return number > 1 && !(2..<number).contains { number % $0 == 0 }
  }

  @IBOutlet weak var primeField: UITextField!
  
  @IBOutlet weak var primeOutput: UILabel!
  
  @IBAction func primeButton(_ sender: Any) {
    if let input = Int(primeField.text!) {
      if isPrime(input) {
        primeOutput.text = "Yep, \(input) is a prime number!"
        primeField.text = ""
      } else {
        primeOutput.text = "Ooh, nope, \(input) is not prime."
        primeField.text = ""
      }
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

