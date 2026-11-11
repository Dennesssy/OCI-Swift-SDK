import Foundation
import OCICommon

// MARK: - IotClient

public class IotClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://iot.\(region).oraclecloud.com"
    }
}