import Foundation
import OCICommon

// MARK: - ApmsyntheticsApmsyntheticClient

public class ApmsyntheticsApmsyntheticClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://apmsynthetics_apmsynthetic.\(region).oraclecloud.com"
    }
}