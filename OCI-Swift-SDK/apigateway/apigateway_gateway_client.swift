import Foundation
import OCICommon

// MARK: - ApigatewayGatewayClient

public class ApigatewayGatewayClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://apigateway_gateway.\(region).oraclecloud.com"
    }
}