const cds = require('@sap/cds')

module.exports = async function (){

  const externalCustomerMaterial = await cds.connect.to('API_CUSTOMER_MATERIAL_SRV')

  this.on ('READ','A_CustomerMaterial', async req => {
    const tx = externalCustomerMaterial.transaction(req)
    try {
      let result = await tx.run(req.query)
      return result
    } catch (error) {
      console.error(error.message)
    }
  })

}
