import Foundation
import OCICommon

// MARK: - ResourceanalyticsTenancyattachmentClient

public class ResourceanalyticsTenancyattachmentClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://resourceanalytics_tenancyattachment.\(region).oraclecloud.com"
    }
}