import Foundation
import OCICommon

// MARK: - GenerativeaidataGeneratesqlClient

public class GenerativeaidataGeneratesqlClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://generativeaidata_generatesql.\(region).oraclecloud.com"
    }
}