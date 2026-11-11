import Foundation
import OCICommon

// MARK: - ResourceanalyticsMonitoredregionClient

public class ResourceanalyticsMonitoredregionClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://resourceanalytics_monitoredregion.\(region).oraclecloud.com"
    }
}