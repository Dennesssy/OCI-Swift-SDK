import Foundation
import OCICommon

// MARK: - AidataplatformClient

public class AidataplatformClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://aidataplatform.\(region).oraclecloud.com"
    }
}