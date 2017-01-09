//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

class Responder : NSObject {
    func action() {
        print("Button pressed!")
    }
}




let containerView = UIView()
containerView.frame = CGRect(x: 0.0, y: 0.0, width: 300.0, height: 600.0)
PlaygroundPage.current.liveView = containerView
let responder = Responder()

var xOffet:CGFloat = 0.0;
var yOffet:CGFloat = 0.0;

var myButton1 = UIButton()
myButton1.frame = CGRect(x: xOffet, y: yOffet, width: 100, height: 100)
myButton1.backgroundColor = UIColor.red
myButton1.setTitle("Test", for: .normal)
myButton1.addTarget(responder, action: #selector(Responder.action), for: .touchUpInside)

myButton1.layer.cornerRadius = 2
containerView.addSubview(myButton1)
yOffet = myButton1.frame.origin.y + myButton1.frame.height + 10


var textField = UITextField()
textField.frame = CGRect(x: xOffet, y: yOffet, width: 100, height: 50)
textField.backgroundColor = UIColor.red

containerView.addSubview(textField)

