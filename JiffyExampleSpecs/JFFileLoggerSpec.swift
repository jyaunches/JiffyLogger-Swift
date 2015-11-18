import Quick
import Nimble

class JFFileLoggerSpec: QuickSpec {
    override func spec() {
        describe("JFFileLogger") {
            let fileLogger = JFFileLogger()
            
            describe("adding log entry"){
                it("should take format string and subsequent string arguments, format them, and add them to log queue") {
                    expect(fileLogger.queue.count).to(equal(0))
                    
                    let somevar1 = "foo";
                    let somevar2 = "bar";
                    fileLogger.log("Var 1: %@, Var 2: %@", somevar1, somevar2);
                    
                    expect(fileLogger.queue.count).to(equal(1))
                    expect(fileLogger.lastEntry()).to(equal("Var 1: foo, Var 2: bar"))
                }

                it("should take just a string with no arguments"){
                    fileLogger.log("Just some text");
                    expect(fileLogger.lastEntry()).to(equal("Just some text"))
                }
            }
        }
    }
}