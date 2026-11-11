import Foundation
import OCICommon

// MARK: - ApmtracesScheduledqueryClient

public class ApmtracesScheduledqueryClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://apmtraces_scheduledquery.\(region).oraclecloud.com"
    }
}