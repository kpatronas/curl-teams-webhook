# curl-teams-webhook
Use curl to send an MS Teams Webhook

## setup
```
chmod +x ./webhook.sh
```

## Parameters

```
# Pipe text from another command
command | ./webhook.sh <webhook>
# or use a text file as parameter
./webhook.sh <text-file> <webhook>
```

## Examples
Pipe data to the string
```
echo "hello" | ./webhook.sh https://gtechcorp.webhook.office.com/webhookb2/.....
```

Use a file
```
./webhook.sh text.txt https://gtechcorp.webhook.office.com/webhookb2/.....
```
