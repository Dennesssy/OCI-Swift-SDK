import Foundation
import OCICommon

// MARK: - ApiaccesscontrolApimetadataClient

public class ApiaccesscontrolApimetadataClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://apiaccesscontrol_apimetadata.\(region).oraclecloud.com"
    }
}