import Foundation
import OCICommon

// MARK: - DataccBaseinfraClient

public class DataccBaseinfraClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://datacc_baseinfra.\(region).oraclecloud.com"
    }
}