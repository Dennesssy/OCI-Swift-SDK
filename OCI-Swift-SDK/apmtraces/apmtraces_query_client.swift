import Foundation
import OCICommon

// MARK: - ApmtracesQueryClient

public class ApmtracesQueryClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://apmtraces_query.\(region).oraclecloud.com"
    }
}