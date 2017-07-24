//Copyright (c) 2016 Woocheol Park <admin@mrparkwc.com>
//
//Permission is hereby granted, free of charge, to any person obtaining a copy
//of this software and associated documentation files (the "Software"), to deal
//in the Software without restriction, including without limitation the rights
//to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//copies of the Software, and to permit persons to whom the Software is
//furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in
//all copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//THE SOFTWARE.

import Foundation


public enum LogSeparator: String{
    case DEBUG = "📘 DEBUG"
    case INFO = "📗 INFO "
    case WARN = "📒 WARN "
    case ERROR = "📕 ERROR"
}

public class Logging{
    
    public static var isRunning = false
    
    public static func d(_ message: Any, file: String = #file, function: String = #function, line: Int = #line){
        if isRunning {
            printLogMessage(separator: .DEBUG, logMessage: "FILE: \(file), FUNCTION: \(function), LINE: \(line), MESSAGE: \(message)")
        }
    }
    
    public static func d(file: String = #file, function: String = #function, line: Int = #line){
        if isRunning {
            printLogMessage(separator: .DEBUG, logMessage: "FILE: \(file), FUNCTION: \(function), LINE: \(line)")
        }
    }
    
    public static func d(_ target: Array<Any>, file: String = #file, function: String = #function, line: Int = #line){
        if isRunning {
            printLogMessage(separator: .DEBUG, logMessage: "FILE: \(file), FUNCTION: \(function), LINE: \(line)")
            printArrayInfoMessage(target, size: target.count)
            for (index ,any) in target.enumerated() {
                printIndexMessage(index)
                mirror(any)
            }
        }
    }
    public static func i(_ message: Any, file: String = #file, function: String = #function, line: Int = #line){
        if isRunning {
            printLogMessage(separator: .INFO, logMessage: "FILE: \(file), FUNCTION: \(function), LINE: \(line), MESSAGE: \(message)")
        }
    }
    
    public static func i(file: String = #file, function: String = #function, line: Int = #line){
        if isRunning {
            printLogMessage(separator: .INFO, logMessage: "FILE: \(file), FUNCTION: \(function), LINE: \(line)")
        }
    }
    
    public static func i(_ target: Array<Any>, file: String = #file, function: String = #function, line: Int = #line){
        if isRunning {
            printLogMessage(separator: .INFO, logMessage: "FILE: \(file), FUNCTION: \(function), LINE: \(line)")
            printArrayInfoMessage(target, size: target.count)
            for (index ,any) in target.enumerated() {
                printIndexMessage(index)
                mirror(any)
            }
        }
    }
    
    public static func w(_ message: Any, file: String = #file, function: String = #function, line: Int = #line){
        if isRunning {
            printLogMessage(separator: .WARN, logMessage: "FILE: \(file), FUNCTION: \(function), LINE: \(line), MESSAGE: \(message)")
        }
    }
    
    public static func w(file: String = #file, function: String = #function, line: Int = #line){
        if isRunning {
            printLogMessage(separator: .WARN, logMessage: "FILE: \(file), FUNCTION: \(function), LINE: \(line)")
        }
    }
    
    public static func w(_ target: Array<Any>, file: String = #file, function: String = #function, line: Int = #line){
        if isRunning {
            printLogMessage(separator: .WARN, logMessage: "FILE: \(file), FUNCTION: \(function), LINE: \(line)")
            printArrayInfoMessage(target, size: target.count)
            for (index ,any) in target.enumerated() {
                printIndexMessage(index)
                mirror(any)
            }
        }
    }
    
    public static func e(_ message: Any, file: String = #file, function: String = #function, line: Int = #line){
        if isRunning {
            printLogMessage(separator: .ERROR, logMessage: "FILE: \(file), FUNCTION: \(function), LINE: \(line), MESSAGE: \(message)")
        }
    }
    
    public static func e(file: String = #file, function: String = #function, line: Int = #line){
        if isRunning {
            printLogMessage(separator: .ERROR, logMessage: "FILE: \(file), FUNCTION: \(function), LINE: \(line)")
        }
    }
    
    public static func e(_ target: Array<Any>, file: String = #file, function: String = #function, line: Int = #line){
        if isRunning {
            printLogMessage(separator: .ERROR, logMessage: "FILE: \(file), FUNCTION: \(function), LINE: \(line)")
            printArrayInfoMessage(target, size: target.count)
            for (index ,any) in target.enumerated() {
                printIndexMessage(index)
                mirror(any)
            }
        }
    }
    
    public static func printLogMessage(separator: LogSeparator,logMessage: Any){
        print("| \(separator.rawValue) | \(logMessage)")
    }
    
    public static func printIndexMessage(_ index: Int){
        print("| 🔓 INDEX | \(index)")
    }
    
    public static func printArrayInfoMessage(_ target: Any, size: Int){
        print("| 🗄 Array | Info -> [\(target)], Size -> [\(size)]")
    }
    
    public static func mirror(_ target: Any){
        print("---------------------------------------------------------")
        let mirror = Mirror(reflecting: target)
        for (variableName, value) in mirror.children {
            guard let variableName = variableName else { continue }
            print("Variable Name -> [\(variableName)], Variable Type -> [\(type(of : value))], Value -> [\(value)]")
        }
        print("---------------------------------------------------------")
    }
    
}







