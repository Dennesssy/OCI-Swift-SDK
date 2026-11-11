import Foundation
import OCICommon

// MARK: - MulticloudMulticloudsmetadataClient

public class MulticloudMulticloudsmetadataClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://multicloud_multicloudsmetadata.\(region).oraclecloud.com"
    }
}