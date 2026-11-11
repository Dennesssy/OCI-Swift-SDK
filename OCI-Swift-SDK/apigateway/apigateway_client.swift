import Foundation
import OCICommon

// MARK: - ApigatewayClient

public class ApigatewayClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://apigateway.\(region).oraclecloud.com"
    }
}