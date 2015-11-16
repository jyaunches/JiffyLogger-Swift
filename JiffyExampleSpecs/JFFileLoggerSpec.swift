import Quick
import Nimble

class JFFileLoggerSpec: QuickSpec {
    override func spec() {
        describe("JFFileLogger") {
            
            it("should take format string and subsequent string arguments") {
                var stubQueue: [String] = [];
                let fileLogger = JFFileLogger(queue: stubQueue)

                expect(stubQueue.count).to(equal(0))
                
                let somevar1 = "foo";
                let somevar2 = "bar";
                
                fileLogger.log("Var 1: %@, Var 2: %@", somevar1, somevar2);
                
                expect(stubQueue.count).to(equal(0))
                expect(stubQueue.first).to(equal("Var 1: foo, Var 2: bar"))
            }
        }
    }
}