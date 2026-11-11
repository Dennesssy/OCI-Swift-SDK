import Foundation
import OCICommon

// MARK: - MulticloudOmhubresourceanchorClient

public class MulticloudOmhubresourceanchorClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://multicloud_omhubresourceanchor.\(region).oraclecloud.com"
    }
}