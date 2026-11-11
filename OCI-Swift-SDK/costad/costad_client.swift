import Foundation
import OCICommon

// MARK: - CostadClient

public class CostadClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://costad.\(region).oraclecloud.com"
    }
}