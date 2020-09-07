const cds = require('@sap/cds')

module.exports = async function (){

  const externalCustomerMaterial = await cds.connect.to('API_CUSTOMER_MATERIAL_SRV')

  this.on ('READ','A_CustomerMaterial', async req => {
    const tx = externalCustomerMaterial.transaction(req)
    try {
      // Restrict to Customer in User attribute
      /*
      */
     var customer = req.user.attr.customer
     var customerFilter = [
        {ref:['Customer']},
        '=',
        {val: customer}
      ]
      if(req.query && req.query.SELECT.where) {
        req.query.SELECT.where.push(
        'and'
        )
        Array.prototype.push.apply(req.query.SELECT.where, customerFilter)
      } else {
        req.query.SELECT.where = customerFilter
      } 
      // console.log(req.query)
      // console.log(req.user)
      let result = await tx.run(req.query)
      return result
    } catch (error) {
      console.error(error.message)
    }
  })

}
