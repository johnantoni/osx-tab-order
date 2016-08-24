//
//  ViewController.swift
//  test
//
//  Created by John Griffiths on 2016-08-23.
//  Copyright © 2016 John Griffiths. All rights reserved.
//

import Cocoa

class MyWindow: NSWindow {
    override func recalculateKeyViewLoop() {
        // Remove. nextKeyView and makeFirstResponder seemed broken with this
    }
}

class ViewController: NSViewController {

    @IBOutlet weak var txtA: NSTextField!
    @IBOutlet weak var txtC: NSTextField!
    @IBOutlet weak var txtB: NSTextField!
    @IBOutlet weak var txtD: NSTextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //txtA.nextKeyView = txtB
    }

    override func viewWillAppear() {
        self.view.window?.makeFirstResponder(txtA)
    }
    
    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

