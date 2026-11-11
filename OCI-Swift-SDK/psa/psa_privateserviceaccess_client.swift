import Foundation
import OCICommon

// MARK: - PsaPrivateserviceaccessClient

public class PsaPrivateserviceaccessClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://psa_privateserviceaccess.\(region).oraclecloud.com"
    }
}