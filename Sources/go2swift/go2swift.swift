import Foundation

@_cdecl("computeHello")
public func computeHello(namePtr: UnsafePointer<CChar>?) -> UnsafePointer<CChar>?{
  let name = String(cString: namePtr!)
  return UnsafePointer(strdup("Hello \(name)!"))
}
