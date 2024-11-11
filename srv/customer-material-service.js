const cds = require("@sap/cds");
const LOG = cds.log("customer-material-service");

module.exports = async function (srv) {
  // Connect to external services
  const externalProduct = await cds.connect.to("API_PRODUCT_SRV");
  const externalCustomerMaterial = await cds.connect.to(
    "API_CUSTOMER_MATERIAL_SRV"
  );

  srv.on("READ", "A_Product", async (req) => {
    return externalProduct.run(req.query);
  });

  srv.on("READ", "A_CustomerMaterial", async (req) => {
    return externalCustomerMaterial.run(req.query);
  });
};
