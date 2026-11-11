import Foundation
import OCICommon

// MARK: - ApmtracesAttributesClient

public class ApmtracesAttributesClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://apmtraces_attributes.\(region).oraclecloud.com"
    }
}