//
//  NetWorkUikits.swift
//  FZSwiftProduct
//
//  Created by xiehewanbang on 2019/2/15.
//  Copyright © 2019年 xiehewanbang. All rights reserved.
//

import UIKit

typealias NetworkFetcherCompletionHandle =  (_ data:Any?)->()
typealias NetworkFetcherErrorHandle = (_ error:Error)->()

class NetWorkUikits: NSObject {
    
  public  class func requestWithUrl(url:String,param:NSDictionary?,completionHandle completion:@escaping NetworkFetcherCompletionHandle,failureHandle failure:@escaping NetworkFetcherErrorHandle) -> URLSessionDataTask? {
        let  session = NetWorkUikits.session()
        
        let task = session.post(url, parameters: param, progress: { (progress:Progress) in
            
        }, success: { (task:URLSessionDataTask?, result:Any?)->Void in
            completion(result)
        }) {(task:URLSessionDataTask?,error: Error) -> Void in
            failure(error)
        }
        return task
    }
    
  private  class  func session() -> AFHTTPSessionManager {
        let session = AFHTTPSessionManager.init();
        session.requestSerializer.timeoutInterval = 300;
        session.requestSerializer.setValue("", forHTTPHeaderField: "lat")
        session.requestSerializer.setValue("", forHTTPHeaderField: "lng")
        session.requestSerializer.setValue("true", forHTTPHeaderField: "versionFlag")
        return session
    }


}
