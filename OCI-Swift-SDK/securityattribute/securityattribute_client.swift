import Foundation
import OCICommon

// MARK: - SecurityattributeClient

public class SecurityattributeClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://securityattribute.\(region).oraclecloud.com"
    }
}