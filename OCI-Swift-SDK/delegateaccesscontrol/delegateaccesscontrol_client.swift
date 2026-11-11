import Foundation
import OCICommon

// MARK: - DelegateaccesscontrolClient

public class DelegateaccesscontrolClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://delegateaccesscontrol.\(region).oraclecloud.com"
    }
}