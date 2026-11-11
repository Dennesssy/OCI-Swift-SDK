import Foundation

// MARK: - CreateDataSourceRequest

public struct CreateDataSourceRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var createDataSourceDetails: CreateDataSourceDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, createDataSourceDetails
    }

    public init(
                opcRequestId: String? = nil,
                createDataSourceDetails: CreateDataSourceDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.createDataSourceDetails = createDataSourceDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDataSourceRequest: CustomStringConvertible {
    public var description: String { "CreateDataSourceRequest()" }
}

// MARK: - CreateDataSourceResponse

public struct CreateDataSourceResponse: Codable, Sendable {
    public var location: String?
    public var contentLocation: String?
    public var etag: String?
    public var opcWorkRequestId: String?
    public var opcRequestId: String?
    public var dataSource: DataSource?

    private enum CodingKeys: String, CodingKey {
        case location, contentLocation, etag, opcWorkRequestId, opcRequestId, dataSource
    }

    public init(
                location: String? = nil,
                contentLocation: String? = nil,
                etag: String? = nil,
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil,
                dataSource: DataSource? = nil
    ) {
        self.location = location
        self.contentLocation = contentLocation
        self.etag = etag
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
        self.dataSource = dataSource
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDataSourceResponse: CustomStringConvertible {
    public var description: String { "CreateDataSourceResponse()" }
}