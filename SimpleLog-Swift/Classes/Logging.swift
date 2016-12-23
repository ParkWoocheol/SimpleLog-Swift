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


public enum LogSeparator: String{
    case DEBUG = "DEBUG"
    case INFO = "INFO"
    case WARN = "WARN"
    case ERROR = "ERROR"
}

public class Logging{
    
    public static func d(message: String, file: String = #file, function: String = #function, line: Int = #line){
        logMessagePrint(separator: .DEBUG, logMessage: "FILE: \(file), FUNCTION: \(function), LINE: \(line), MESSAGE: \(message)")
    }
    
    public static func d(tag: String, message: String,function: String = #function, line: Int = #line){
        logMessagePrint(separator: .DEBUG, logMessage: "TAG: \(tag), FUNCTION: \(function), LINE: \(line), MESSAGE: \(message)")
    }
    
    public static func i(message: String, file: String = #file, function: String = #function, line: Int = #line){
        logMessagePrint(separator: .INFO, logMessage: "FILE: \(file), FUNCTION: \(function), LINE: \(line), MESSAGE: \(message)")
    }
    
    public static func i(tag: String, message: String,function: String = #function, line: Int = #line){
        logMessagePrint(separator: .INFO, logMessage: "TAG: \(tag), FUNCTION: \(function), LINE: \(line), MESSAGE: \(message)")
    }
    
    public static func w(message: String, file: String = #file, function: String = #function, line: Int = #line){
        logMessagePrint(separator: .WARN, logMessage: "FILE: \(file), FUNCTION: \(function), LINE: \(line), MESSAGE: \(message)")
    }
    
    public static func w(tag: String, message: String,function: String = #function, line: Int = #line){
        logMessagePrint(separator: .WARN, logMessage: "TAG: \(tag), FUNCTION: \(function), LINE: \(line), MESSAGE: \(message)")
    }
    
    public static func e(message: String, file: String = #file, function: String = #function, line: Int = #line){
        logMessagePrint(separator: .ERROR, logMessage: "FILE: \(file), FUNCTION: \(function), LINE: \(line), MESSAGE: \(message)")
    }
    
    public static func e(tag: String, message: String,function: String = #function, line: Int = #line){
        logMessagePrint(separator: .ERROR, logMessage: "TAG: \(tag), FUNCTION: \(function), LINE: \(line), MESSAGE: \(message)")
    }
    
    public static func logMessagePrint(separator: LogSeparator,logMessage: String){
        print("| \(separator.rawValue) | \(logMessage)")
    }
    
}



