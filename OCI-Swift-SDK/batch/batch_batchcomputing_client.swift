import Foundation
import OCICommon

// MARK: - BatchBatchcomputingClient

public class BatchBatchcomputingClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://batch_batchcomputing.\(region).oraclecloud.com"
    }
}