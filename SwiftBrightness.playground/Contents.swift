//: Playground - noun: a place where people can play

import Cocoa

private func setBrightnessLevel(level: Float) {
    var iterator: io_iterator_t = 0
    
    let result = IOServiceGetMatchingServices(kIOMasterPortDefault,
        IOServiceMatching("IODisplayConnect"), &iterator)

    if result == kIOReturnSuccess {
        var service: io_object_t = 1
        
        for ;; {
            service = IOIteratorNext(iterator)
            
            if service == 0 {
                break
            }
            IODisplaySetFloatParameter(service, 0, kIODisplayBrightnessKey, level)
            IOObjectRelease(service)
        }
    }
}

setBrightnessLevel(0.20);

CGMainDisplayID()
let x = UInt32(5)

CGGetOnlineDisplayList(x, nil, y)
