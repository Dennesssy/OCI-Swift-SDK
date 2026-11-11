import Foundation
import OCICommon

// MARK: - GdpGuardeddatapipelineClient

public class GdpGuardeddatapipelineClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://gdp_guardeddatapipeline.\(region).oraclecloud.com"
    }
}