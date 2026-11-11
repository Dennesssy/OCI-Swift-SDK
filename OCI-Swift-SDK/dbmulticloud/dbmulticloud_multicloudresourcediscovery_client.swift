import Foundation
import OCICommon

// MARK: - DbmulticloudMulticloudresourcediscoveryClient

public class DbmulticloudMulticloudresourcediscoveryClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://dbmulticloud_multicloudresourcediscovery.\(region).oraclecloud.com"
    }
}