import Foundation
import OCICommon

// MARK: - DbmulticloudOracledbazurevaultassociationClient

public class DbmulticloudOracledbazurevaultassociationClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://dbmulticloud_oracledbazurevaultassociation.\(region).oraclecloud.com"
    }
}