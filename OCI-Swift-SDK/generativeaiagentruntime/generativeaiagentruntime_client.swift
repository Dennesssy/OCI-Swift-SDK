import Foundation
import OCICommon

// MARK: - GenerativeaiagentruntimeClient

public class GenerativeaiagentruntimeClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://generativeaiagentruntime.\(region).oraclecloud.com"
    }
}