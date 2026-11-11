import Foundation
import OCICommon

// MARK: - ManagedkafkaKafkaclusterClient

public class ManagedkafkaKafkaclusterClient {
    public var basePath: String
    public var host: String
    public var config: JSONValue?

    public init(basePath: String = "") {
        self.basePath = basePath
        self.host = ""
    }

    public func setRegion(region: String) {
        self.host = "https://managedkafka_kafkacluster.\(region).oraclecloud.com"
    }
}