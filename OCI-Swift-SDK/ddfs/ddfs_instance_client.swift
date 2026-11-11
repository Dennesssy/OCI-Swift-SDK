import Foundation
import OCICommon

// MARK: - DdfsInstanceClient

public class DdfsInstanceClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://ddfs_instance.\(region).oraclecloud.com"
    }
}