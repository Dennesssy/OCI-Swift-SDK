import Foundation
import OCICommon

// MARK: - ApmtracesTraceClient

public class ApmtracesTraceClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://apmtraces_trace.\(region).oraclecloud.com"
    }
}