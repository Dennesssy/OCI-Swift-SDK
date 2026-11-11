import Foundation

// MARK: - CreateKafkaClusterConfigRequest

public struct CreateKafkaClusterConfigRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createKafkaClusterConfigDetails: CreateKafkaClusterConfigDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createKafkaClusterConfigDetails
    }

    public init(
                opcRequestId: String? = nil,
                createKafkaClusterConfigDetails: CreateKafkaClusterConfigDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createKafkaClusterConfigDetails = createKafkaClusterConfigDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateKafkaClusterConfigRequest: CustomStringConvertible {
    public var description: String { "CreateKafkaClusterConfigRequest()" }
}

// MARK: - CreateKafkaClusterConfigResponse

public struct CreateKafkaClusterConfigResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var location: String?
    public var contentLocation: String?
    public var kafkaClusterConfig: KafkaClusterConfig?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, location, contentLocation, kafkaClusterConfig
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                location: String? = nil,
                contentLocation: String? = nil,
                kafkaClusterConfig: KafkaClusterConfig? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.location = location
        self.contentLocation = contentLocation
        self.kafkaClusterConfig = kafkaClusterConfig
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateKafkaClusterConfigResponse: CustomStringConvertible {
    public var description: String { "CreateKafkaClusterConfigResponse()" }
}