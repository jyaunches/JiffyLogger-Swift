import Quick
import Nimble

class StringHelperSpec: QuickSpec {
    override func spec() {
        describe("StringHelper") {
            it("should format string when given base text and arguments") {
                let input: String = "Var 1: %@, Var 2: %@"
                let result =  input.formatWithArguments(["foo", "bar"])

                expect(result).to(equal("Var 1: foo, Var 2: bar"))
            }

            it("should throw exception when not passed enough arguments") {
                let input: String = "Var 1: %@, Var 2: %@"
                expect(input.formatWithArguments(["foo"])).to(raiseException())
            }

            it("should throw exception when more than 10 arguments passed") {
                let input: String = "Var 1: %@, Var 2: %@"
                expect(input.formatWithArguments(["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"])).to(raiseException())
            }
        }
    }
}