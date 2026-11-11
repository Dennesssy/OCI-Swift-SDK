import Foundation
import OCICommon

// MARK: - DbmulticloudOracledbazureblobcontainerClient

public class DbmulticloudOracledbazureblobcontainerClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://dbmulticloud_oracledbazureblobcontainer.\(region).oraclecloud.com"
    }
}