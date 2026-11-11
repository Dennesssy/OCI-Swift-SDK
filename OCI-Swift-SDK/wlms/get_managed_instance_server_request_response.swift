import Foundation

// MARK: - GetManagedInstanceServerRequest

public struct GetManagedInstanceServerRequest: Codable, Sendable {
    public var managedInstanceId: String?
    public var serverId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case managedInstanceId, serverId, opcRequestId
    }

    public init(
                managedInstanceId: String? = nil,
                serverId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.managedInstanceId = managedInstanceId
        self.serverId = serverId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetManagedInstanceServerRequest: CustomStringConvertible {
    public var description: String { "GetManagedInstanceServerRequest()" }
}

// MARK: - GetManagedInstanceServerResponse

public struct GetManagedInstanceServerResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var server: Server?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, server
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                server: Server? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.server = server
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetManagedInstanceServerResponse: CustomStringConvertible {
    public var description: String { "GetManagedInstanceServerResponse()" }
}