import Foundation
import OCICommon

// MARK: - ResourceanalyticsResourceanalyticsinstanceClient

public class ResourceanalyticsResourceanalyticsinstanceClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://resourceanalytics_resourceanalyticsinstance.\(region).oraclecloud.com"
    }
}