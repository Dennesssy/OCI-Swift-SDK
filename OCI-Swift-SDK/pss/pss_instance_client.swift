import Foundation
import OCICommon

// MARK: - PssInstanceClient

public class PssInstanceClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://pss_instance.\(region).oraclecloud.com"
    }
}