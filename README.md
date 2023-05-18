# curl-teams-webhook
Use curl to send an MS Teams Webhook

## Parameters

```
# Pipe text from another command
command | ./curlOfficeWebhook.sh <webhook>
# or use a text file as parameter
./curlOfficeWebhook.sh <text-file> <webhook>
```

## Examples
Pipe data to the string
```
echo "hello" | ./curlOfficeWebhook.sh https://gtechcorp.webhook.office.com/webhookb2/.....
```

Use a file
```
./curlOfficeWebhook.sh text.txt https://gtechcorp.webhook.office.com/webhookb2/.....
```
