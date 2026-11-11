import Foundation

// MARK: - waitcriteriasummary

public struct waitcriteriasummary: Codable, Sendable {

    public var jsonData: Data?
    public var waitType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, waitType
    }

    public init(
                jsonData: Data? = nil,
                waitType: String? = nil
    ) {
        self.jsonData = jsonData
        self.waitType = waitType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension waitcriteriasummary: CustomStringConvertible {
    public var description: String { "waitcriteriasummary()" }
}