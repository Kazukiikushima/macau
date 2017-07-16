import UIKit
import ChameleonFramework

var str = "Hello, playground"
var blue = HexColor(hexString: "#F2F7FF")
var white = ContrastColorOf(backgroundColor: HexColor(hexString: "#0B409C"), returnFlat: true).hexValue()
var options: UIViewAnimationOptions
var yellow = FlatYellow().hexValue()
var black = ContrastColorOf(backgroundColor: FlatYellow(), returnFlat: true).hexValue()
