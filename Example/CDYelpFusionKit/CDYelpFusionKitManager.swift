//
//  CDYelpKitManager.swift
//  CDYelpFusionKit
//
//  Created by Christopher de Haan on 5/6/17.
//
//  Copyright (c) 2016 Christopher de Haan <contact@christopherdehaan.me>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import CDYelpFusionKit
import UIKit

final class CDYelpFusionKitManager: NSObject {
    
    static let shared = CDYelpFusionKitManager()
    
    var yelpAPIClient: CDYelpAPIClient!
    
    func configure() {
        let yelpOAuthManager = CDYelpOAuthAPIClient(clientId: "c2ga0ZniC7rQMICCibYK6g",
                                                    clientSecret: "F4CbFYVJuWVP2pE8QvS2oitpCcFRHCsciQiga74gaYnEAcqrTWwq42IeePyau5Et")
        self.yelpAPIClient = CDYelpAPIClient(oAuthAPIClient: yelpOAuthManager)
//        self.yelpAPIClient = CDYelpAPIClient(clientId: "",
//                                             clientSecret: "")
        self.yelpAPIClient.authorize()
    }
}
