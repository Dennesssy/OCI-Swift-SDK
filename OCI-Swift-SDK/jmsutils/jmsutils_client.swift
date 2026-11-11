import Foundation
import OCICommon

// MARK: - JmsutilsClient

public class JmsutilsClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://jmsutils.\(region).oraclecloud.com"
    }
}