import Foundation

// MARK: - updatewaitcriteriadetails

public struct updatewaitcriteriadetails: Codable, Sendable {

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

extension updatewaitcriteriadetails: CustomStringConvertible {
    public var description: String { "updatewaitcriteriadetails()" }
}