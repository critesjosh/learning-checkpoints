const BasicContract = artifacts.require("BasicContract")

contract("BasicContract", async accounts => {
    it("should be deployed", async () => {
        let result = await BasicContract.deployed()
        assert.exists(result.address, "A successfully deployed contract will have an address.")
    })
})