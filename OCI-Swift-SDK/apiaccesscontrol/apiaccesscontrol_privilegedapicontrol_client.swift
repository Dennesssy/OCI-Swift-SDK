import Foundation
import OCICommon

// MARK: - ApiaccesscontrolPrivilegedapicontrolClient

public class ApiaccesscontrolPrivilegedapicontrolClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://apiaccesscontrol_privilegedapicontrol.\(region).oraclecloud.com"
    }
}