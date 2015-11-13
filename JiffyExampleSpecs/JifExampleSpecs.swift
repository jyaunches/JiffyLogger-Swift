import Quick
import Nimble

class TipCalcualtorSpec: QuickSpec {
    override func spec() {
        describe("TipCalcualtor") {
            it("should assert") {
                let tipCalc = TipCalculator(total: 33.25, taxPct: 0.06)
                let possibleTips = tipCalc.possibleTips();
                expect(possibleTips).to(equal(["Portland","San Francisco","Cupertino"]))
            }

        }
    }
}