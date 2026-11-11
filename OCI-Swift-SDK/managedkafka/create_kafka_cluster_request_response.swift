import Foundation

// MARK: - CreateKafkaClusterRequest

public struct CreateKafkaClusterRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createKafkaClusterDetails: CreateKafkaClusterDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createKafkaClusterDetails
    }

    public init(
                opcRequestId: String? = nil,
                createKafkaClusterDetails: CreateKafkaClusterDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createKafkaClusterDetails = createKafkaClusterDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateKafkaClusterRequest: CustomStringConvertible {
    public var description: String { "CreateKafkaClusterRequest()" }
}

// MARK: - CreateKafkaClusterResponse

public struct CreateKafkaClusterResponse: Codable, Sendable {
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var kafkaCluster: KafkaCluster?

    private enum CodingKeys: String, CodingKey {
        case location, contentLocation, etag, opcWorkRequestId, opcRequestId, kafkaCluster
    }

    public init(
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                kafkaCluster: KafkaCluster? = nil
    ) {
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.kafkaCluster = kafkaCluster
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateKafkaClusterResponse: CustomStringConvertible {
    public var description: String { "CreateKafkaClusterResponse()" }
}