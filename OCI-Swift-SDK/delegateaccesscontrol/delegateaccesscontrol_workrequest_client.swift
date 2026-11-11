import Foundation
import OCICommon

// MARK: - DelegateaccesscontrolWorkrequestClient

public class DelegateaccesscontrolWorkrequestClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://delegateaccesscontrol_workrequest.\(region).oraclecloud.com"
    }
}