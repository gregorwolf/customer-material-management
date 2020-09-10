const cds = require('@sap/cds')

module.exports = async function (srv){

  const externalCustomerMaterial = await cds.connect.to('API_CUSTOMER_MATERIAL_SRV')

  srv.on ('READ','A_CustomerMaterial', async req => {
    const tx = externalCustomerMaterial.transaction(req)
    try {
      // Remove Count as it's not supported for external service call
      if(req.query.SELECT.count) {
        delete req.query.SELECT.count
      }
      // Restrict to Customer in User attribute
      /*
      */
      var customer = req.user.attr.customer
      var customerFilter = [
        {ref:['Customer']},
        '=',
        {val: customer}
      ]
      // Select for a single entity is different
      if(req.query.SELECT.from && req.query.SELECT.from.ref[0] && req.query.SELECT.from.ref[0].where) {
        req.query.SELECT.from.ref[0].where.push('and')
        Array.prototype.push.apply(req.query.SELECT.from.ref[0].where, customerFilter)
      } else {
        if(req.query && req.query.SELECT.where) {
          req.query.SELECT.where.push('and')
          Array.prototype.push.apply(req.query.SELECT.where, customerFilter)
        } else {
          req.query.SELECT.where = customerFilter
        }  
      }
      // console.log(req.query)
      // console.log(req.user)
      let result = await tx.run(req.query)
      return result
    } catch (error) {
      console.error("Error Message: " + error.message)
      if(error.request && error.request.path) {
        console.error("Request Patch: " + error.request.path)
      }
    }
  })

  srv.after('READ', 'A_CustomerMaterial', (customerMaterial,req) => {
    customerMaterial.$count = customerMaterial.length
  })

}
