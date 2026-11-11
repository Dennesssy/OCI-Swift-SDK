import Foundation
import OCICommon

// MARK: - ApigatewayWorkrequestsClient

public class ApigatewayWorkrequestsClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://apigateway_workrequests.\(region).oraclecloud.com"
    }
}