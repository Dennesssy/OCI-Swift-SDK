import Foundation

// MARK: - ComputeInstanceGroupByQuerySelector

public struct ComputeInstanceGroupByQuerySelector: Codable, Sendable {

    public var region: String?
    public var query: String?

    private enum CodingKeys: String, CodingKey {
        case region, query
    }

    public init(
                region: String? = nil,
                query: String? = nil
    ) {
        self.region = region
        self.query = query
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ComputeInstanceGroupByQuerySelector: CustomStringConvertible {
    public var description: String { "ComputeInstanceGroupByQuerySelector()" }
}