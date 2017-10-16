func makeTownGrand(withBudget budget: Int, condition: (Int) -> Bool) -> ((Int, Int) -> Int)? {
    if condition(budget) {
        func buildRoads(byAddingLights lights: Int, toExistingLights existingLights: Int) -> Int {
            return lights + existingLights
        }
        return buildRoads
    } else {
        return nil
    }
}
func evaluate(budget: Int) -> Bool {
    return budget > 20_000
}
var stoplights = 4
if let townPlanByAddingLightsToExistingLights = makeTownGrand(withBudget: 1_000_000, condition: evaluate) {
    stoplights = townPlanByAddingLightsToExistingLights(4, stoplights)
}
print("Knowhere has \(stoplights) stoplights.")
