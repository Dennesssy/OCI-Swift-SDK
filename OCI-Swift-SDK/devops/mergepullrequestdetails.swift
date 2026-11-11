import Foundation

// MARK: - mergepullrequestdetails

public struct mergepullrequestdetails: Codable, Sendable {

    public var jsonData: Data?
    public var actionType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, actionType
    }

    public init(
                jsonData: Data? = nil,
                actionType: String? = nil
    ) {
        self.jsonData = jsonData
        self.actionType = actionType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension mergepullrequestdetails: CustomStringConvertible {
    public var description: String { "mergepullrequestdetails()" }
}