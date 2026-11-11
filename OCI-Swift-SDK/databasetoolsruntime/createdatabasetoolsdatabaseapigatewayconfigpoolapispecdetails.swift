import Foundation

// MARK: - createdatabasetoolsdatabaseapigatewayconfigpoolapispecdetails

public struct createdatabasetoolsdatabaseapigatewayconfigpoolapispecdetails: Codable, Sendable {

    public var jsonData: Data?
    public var displayName: String?
    public var content: String?
    public var type: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, displayName, content, type
    }

    public init(
                jsonData: Data? = nil,
                displayName: String? = nil,
                content: String? = nil,
                type: String? = nil
    ) {
        self.jsonData = jsonData
        self.displayName = displayName
        self.content = content
        self.type = type
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension createdatabasetoolsdatabaseapigatewayconfigpoolapispecdetails: CustomStringConvertible {
    public var description: String { "createdatabasetoolsdatabaseapigatewayconfigpoolapispecdetails()" }
}