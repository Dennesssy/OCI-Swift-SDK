import Foundation

// MARK: - DeleteDataSourceRequest

public struct DeleteDataSourceRequest: Codable, Sendable {
    public var dataSourceId: String?
    public var ifMatch: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case dataSourceId, ifMatch, opcRequestId
    }

    public init(
                dataSourceId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.dataSourceId = dataSourceId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteDataSourceRequest: CustomStringConvertible {
    public var description: String { "DeleteDataSourceRequest()" }
}

// MARK: - DeleteDataSourceResponse

public struct DeleteDataSourceResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DeleteDataSourceResponse: CustomStringConvertible {
    public var description: String { "DeleteDataSourceResponse()" }
}