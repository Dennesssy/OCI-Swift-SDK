import Foundation
import OCICommon

// MARK: - WlmsWeblogicmanagementserviceClient

public class WlmsWeblogicmanagementserviceClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://wlms_weblogicmanagementservice.\(region).oraclecloud.com"
    }
}