# Currency Converter Lambda

## Usage

- Build the zip: cd app/ && zip function.zip index.js
- Apply: cd infra/ && terraform apply -var-file=envs/dev/dev.tfvars

## Test Outputs

INVOKE_URL=$(cd infra && terraform output -raw invoke_url)

curl ${INVOKE_URL}/rates
{"rates":{"USD":1,"EUR":0.92,"GBP":0.79,"JPY":149.5,"GTQ":7.78}}

curl -X POST ${INVOKE_URL}/convert \
 -H 'Content-Type: application/json' \
 -d '{"from":"USD","to":"GTQ","amount":100}'
{"from":"USD","to":"GTQ","amount":100,"result":778}

## Evidence

```
{
	"FunctionArn": "arn:aws:lambda:us-east-1:645876442992:function:currency-converter-dev",
	"State": "Active",
	"Arch": [
		"arm64"
	]
}
```
