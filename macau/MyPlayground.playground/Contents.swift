import UIKit
import ChameleonFramework

var str = "Hello, playground"
var yellow = FlatYellow().hexValue()
var black = ContrastColorOf(backgroundColor: FlatYellow(), returnFlat: true).hexValue()
