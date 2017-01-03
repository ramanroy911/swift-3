//: Playground - noun: a place where people can play

import UIKit

import PlaygroundSupport
class Responder : NSObject {
    func action() {
        print("Button pressed!")
    }
}

let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 300.0, height: 600.0))
PlaygroundPage.current.liveView = containerView
let responder = Responder()

var myButton1 = UIButton()
myButton1.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
myButton1.backgroundColor = UIColor.red
myButton1.setTitle("Test", for: .normal)
myButton1.addTarget(responder, action: #selector(Responder.action), for: .touchUpInside)
containerView.addSubview(myButton1)


