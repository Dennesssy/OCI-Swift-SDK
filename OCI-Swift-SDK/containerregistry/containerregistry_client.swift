import Foundation
import OCICommon

// MARK: - ContainerregistryClient

public class ContainerregistryClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://containerregistry.\(region).oraclecloud.com"
    }
}