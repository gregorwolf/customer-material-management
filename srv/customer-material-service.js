const cds = require('@sap/cds')

module.exports = async function (srv){

  const externalCustomerMaterial = await cds.connect.to('API_CUSTOMER_MATERIAL_SRV')

  srv.on ('READ','A_CustomerMaterial', async req => {
    const externalCustomerMaterialTransaction = externalCustomerMaterial.transaction(req)
    try {
      // Remove Count as it's not supported for external service call
      if(req.query.SELECT.count) {
        delete req.query.SELECT.count
      }
      // Restrict to Customer in User attribute
      var customer = req.user.attr.customer
      var customerFilter = {Customer: customer}
      // Works but needs custom handling for read
      if(req.query.SELECT.from && req.query.SELECT.from.ref[0] && req.query.SELECT.from.ref[0].where) {
        // single read
        var query = SELECT.from(req.target).where(req.data).where(customerFilter)
        if(req.query.SELECT.columns) {
          query.columns();
        }
        let results = await externalCustomerMaterialTransaction.run(query)
        return results[0]
      } else {
        // Query
        req.query.where(customerFilter)
        let result = await externalCustomerMaterialTransaction.run(req.query)
        return result
      }
      /*
      // Creates:
      // Request Patch: /sap/opu/odata/sap/API_CUSTOMER_MATERIAL_SRV/%5Bobject%20Object%5D?$select=Material,MaterialByCustomer,SalesOrganization,DistributionChannel,Customer&$filter=Customer%20eq%20%271000021%27&$format=json
      // for single and mails.
      req.query.where(customerFilter)
      let result = await externalCustomerMaterialTransaction.run(req.query)
      return result
      */
    } catch (error) {
      console.error("Error Message: " + error.message)
      if(error.request && error.request.path) {
        console.error("Request Patch: " + error.request.path)
      }
    }
  })

  srv.after('READ', 'A_CustomerMaterial', (customerMaterial,req) => {
    if(customerMaterial.length) {
      customerMaterial.$count = customerMaterial.length
    }
  })

}
