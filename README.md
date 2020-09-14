# Customer Material Management

Add the following content to **default-env.json**:

```JSON
{
  "VCAP_SERVICES": {
  },
  "destinations": [
    {
      "name": "S4H",
      "url": "http://localhost:4000/sap/opu/odata/sap/API_CUSTOMER_MATERIAL_SRV"
    }
  ]
}
```