import Foundation
import OCICommon

// MARK: - MulticloudMulticloudalertsClient

public class MulticloudMulticloudalertsClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://multicloud_multicloudalerts.\(region).oraclecloud.com"
    }
}