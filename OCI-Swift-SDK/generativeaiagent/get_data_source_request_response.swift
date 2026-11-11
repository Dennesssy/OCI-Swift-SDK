import Foundation

// MARK: - GetDataSourceRequest

public struct GetDataSourceRequest: Codable, Sendable {
    public var dataSourceId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case dataSourceId, opcRequestId
    }

    public init(
                dataSourceId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.dataSourceId = dataSourceId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDataSourceRequest: CustomStringConvertible {
    public var description: String { "GetDataSourceRequest()" }
}

// MARK: - GetDataSourceResponse

public struct GetDataSourceResponse: Codable, Sendable {
    public var etag: String?
    public var opcRequestId: String?
    public var dataSource: DataSource?

    private enum CodingKeys: String, CodingKey {
        case etag, opcRequestId, dataSource
    }

    public init(
                etag: String? = nil,
                opcRequestId: String? = nil,
                dataSource: DataSource? = nil
    ) {
        self.etag = etag
        self.opcRequestId = opcRequestId
        self.dataSource = dataSource
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetDataSourceResponse: CustomStringConvertible {
    public var description: String { "GetDataSourceResponse()" }
}