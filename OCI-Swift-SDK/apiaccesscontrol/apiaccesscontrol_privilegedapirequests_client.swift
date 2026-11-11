import Foundation
import OCICommon

// MARK: - ApiaccesscontrolPrivilegedapirequestsClient

public class ApiaccesscontrolPrivilegedapirequestsClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://apiaccesscontrol_privilegedapirequests.\(region).oraclecloud.com"
    }
}