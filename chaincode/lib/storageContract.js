'use strict'; 

const { Contract } = require('fabric-contract-api');

class StorageContract extends Contract {

  async store(ctx,key,value){
    // Stub == ChaincodeStub
    await ctx.stub.putState(key, Buffer.from(value))
  }

  async viewStore(ctx,key){
    // Stub == ChaincodeStub
    let value = await ctx.stub.getState(key)
    
    if(!value || value.length == 0){
      throw new Error("Asset Key doesn't exist")
    }

    return value.toString()
  }

  async deleteStore(ctx,key){
    // Stub == ChaincodeStub
    await ctx.stub.deleteState(key)
  }

} 

module.exports = StorageContract
