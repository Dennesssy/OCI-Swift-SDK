import Foundation
import OCICommon

// MARK: - ArtifactsClient

public class ArtifactsClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://artifacts.\(region).oraclecloud.com"
    }
}