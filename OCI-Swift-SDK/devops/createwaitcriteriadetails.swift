import Foundation

// MARK: - createwaitcriteriadetails

public struct createwaitcriteriadetails: Codable, Sendable {

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

extension createwaitcriteriadetails: CustomStringConvertible {
    public var description: String { "createwaitcriteriadetails()" }
}