# Customer Material Management

To run against the https://github.com/gregorwolf/customer-material-management-mock project add the following content to **default-env.json**:

```JSON
{
  "VCAP_SERVICES": {
  },
  "destinations": [
    {
      "name": "S4H",
      "url": "http://localhost:4000"
    }
  ]
}
```

To use the https://api.sap.com Sandbox use:

```JSON
{
  "VCAP_SERVICES": {
  },
  "destinations": [
    {
      "name": "S4H",
      "url": "https://sandbox.api.sap.com/s4hanacloud",
      "headers": {
        "APIKey": "Your own api.sap.com API Key"
      }
    }
  ]
}
```
