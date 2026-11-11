import Foundation

// MARK: - UpdateDataSourceRequest

public struct UpdateDataSourceRequest: Codable, Sendable {
    public var dataSourceId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var updateDataSourceDetails: UpdateDataSourceDetails?

    private enum CodingKeys: String, CodingKey {
        case dataSourceId, ifMatch, opcRequestId, updateDataSourceDetails
    }

    public init(
                dataSourceId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                updateDataSourceDetails: UpdateDataSourceDetails? = nil
    ) {
        self.dataSourceId = dataSourceId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.updateDataSourceDetails = updateDataSourceDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDataSourceRequest: CustomStringConvertible {
    public var description: String { "UpdateDataSourceRequest()" }
}

// MARK: - UpdateDataSourceResponse

public struct UpdateDataSourceResponse: Codable, Sendable {
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

extension UpdateDataSourceResponse: CustomStringConvertible {
    public var description: String { "UpdateDataSourceResponse()" }
}