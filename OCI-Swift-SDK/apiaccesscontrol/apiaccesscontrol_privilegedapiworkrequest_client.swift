import Foundation
import OCICommon

// MARK: - ApiaccesscontrolPrivilegedapiworkrequestClient

public class ApiaccesscontrolPrivilegedapiworkrequestClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://apiaccesscontrol_privilegedapiworkrequest.\(region).oraclecloud.com"
    }
}