import Foundation

// MARK: - CreateInstanceRequest

public struct CreateInstanceRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createInstanceDetails: CreateInstanceDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createInstanceDetails
    }

    public init(
                opcRequestId: String? = nil,
                createInstanceDetails: CreateInstanceDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createInstanceDetails = createInstanceDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateInstanceRequest: CustomStringConvertible {
    public var description: String { "CreateInstanceRequest()" }
}

// MARK: - CreateInstanceResponse

public struct CreateInstanceResponse: Codable, Sendable {
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var instance: Instance?

    private enum CodingKeys: String, CodingKey {
        case location, contentLocation, etag, opcWorkRequestId, opcRequestId, instance
    }

    public init(
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                instance: Instance? = nil
    ) {
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.instance = instance
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateInstanceResponse: CustomStringConvertible {
    public var description: String { "CreateInstanceResponse()" }
}