const BasicContract = artifacts.require("BasicContract")

contract("BasicContract", async accounts => {

    let instance

    it("should be deployed", async () => {
        instance = await BasicContract.deployed()
        assert.exists(instance.address, "A successfully deployed contract will have an address.")
    })

    it("should have a storage variable called idCount", async () => {
        let result = await instance.idCount()
        assert.equal(result, 0, "The initialized idCount should be 0.")
    })


})