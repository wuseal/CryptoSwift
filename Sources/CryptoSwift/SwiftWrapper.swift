////  CryptoSwift
//
//  Copyright (C) 2014-__YEAR__ Marcin Krzyżanowski <marcin@krzyzanowskim.com>
//  This software is provided 'as-is', without any express or implied warranty.
//
//  In no event will the authors be held liable for any damages arising from the use of this software.
//
//  Permission is granted to anyone to use this software for any purpose,including commercial applications, and to alter it and redistribute it freely, subject to the following restrictions:
//
//  - The origin of this software must not be misrepresented; you must not claim that you wrote the original software. If you use this software in a product, an acknowledgment in the product documentation is required.
//  - Altered source versions must be plainly marked as such, and must not be misrepresented as being the original software.
//  - This notice may not be removed or altered from any source or binary distribution.
//

import Foundation

@objc public class SwiftWrapper :NSObject{
  
  @objc public func contract(a:String, b: String) -> String{
    return a + b
  }
  
  @objc public func contractAndMd5(a: String, b: String)-> String{
    let r = a + b
    return r.md5()
  }
  
  @objc public func aes(clearText: String) -> String{
    do {
        let aes = try AES(key: "keykeykeykeykeyk", iv: "drowssapdrowssap") // aes128
        let ciphertext = try aes.encrypt(Array(clearText.utf8))
      return ciphertext.toHexString()
    } catch { }
    return ""
  }
  
  @objc public func deAes(encryptedText: String) -> String{
    do {
        let aes = try AES(key: "keykeykeykeykeyk", iv: "drowssapdrowssap") // aes128
        let ciphertext = try aes.decrypt(Array(encryptedText.utf8))
      return ciphertext.toHexString()
    } catch { }
    return ""
  }
  
}
