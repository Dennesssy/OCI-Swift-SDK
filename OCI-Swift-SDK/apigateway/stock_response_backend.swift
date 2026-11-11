import Foundation

// MARK: - StockResponseBackend

public struct StockResponseBackend: Codable, Sendable {

    public var status: Int?
    public var body: String?
    public var headers: [HeaderFieldSpecification]?

    private enum CodingKeys: String, CodingKey {
        case status, body, headers
    }

    public init(
                status: Int? = nil,
                body: String? = nil,
                headers: [HeaderFieldSpecification]? = nil
    ) {
        self.status = status
        self.body = body
        self.headers = headers
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension StockResponseBackend: CustomStringConvertible {
    public var description: String { "StockResponseBackend()" }
}