// swiftlint:disable all
import Amplify
import Foundation

public struct Message: Model {
  public let id: String
  public var sendername: String
  public var body: String
  public var creationDate: Temporal.Date
  
  public init(id: String = UUID().uuidString,
      sendername: String,
      body: String,
      creationDate: Temporal.Date) {
      self.id = id
      self.sendername = sendername
      self.body = body
      self.creationDate = creationDate
  }
}