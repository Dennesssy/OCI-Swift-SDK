import Foundation
import OCICommon

// MARK: - WlmsWeblogicmanagementserviceconfigurationClient

public class WlmsWeblogicmanagementserviceconfigurationClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://wlms_weblogicmanagementserviceconfiguration.\(region).oraclecloud.com"
    }
}