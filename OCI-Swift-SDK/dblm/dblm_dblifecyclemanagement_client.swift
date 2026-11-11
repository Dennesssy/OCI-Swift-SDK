import Foundation
import OCICommon

// MARK: - DblmDblifecyclemanagementClient

public class DblmDblifecyclemanagementClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://dblm_dblifecyclemanagement.\(region).oraclecloud.com"
    }
}