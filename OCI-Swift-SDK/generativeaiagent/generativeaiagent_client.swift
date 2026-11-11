import Foundation
import OCICommon

// MARK: - GenerativeaiagentClient

public class GenerativeaiagentClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://generativeaiagent.\(region).oraclecloud.com"
    }
}