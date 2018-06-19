#!/bin/sh
read -p 'Enter gold, silver, or bronze: ' account
read -p 'Enter your token code: ' token
echo "== Getting token"
#Silver
if [ "$account" = "silver" ] ; then aws --profile silver sts get-session-token --serial-number arn:aws:iam::549323063936:mfa/bennie.mosher@cpsagu.com --token-code $token > /tmp/.awscreds
#Gold
elif [ "$account" = "gold" ] ; then aws --profile gold sts get-session-token --serial-number arn:aws:iam::346482298435:mfa/bennie.mosher@cpsagu.com --token-code $token > /tmp/.awscreds
#Bronze
elif [ "$account" = "bronze" ] ; then aws --profile bronze sts get-session-token --serial-number arn:aws:iam::584428860865:mfa/bennie.mosher@cpsagu.com --token-code $token > /tmp/.awscreds
else echo "Bad account" ; exit ; fi

echo "Here"
cat /tmp/.awscreds
AWS_ACCESSKEYID=$(cat /tmp/.awscreds | jq -r '.Credentials.AccessKeyId' /tmp/.awscreds)
AWS_SECRETACCESSKEY=$(cat /tmp/.awscreds | jq -r '.Credentials.SecretAccessKey' /tmp/.awscreds)
AWS_SESSIONTOKEN=$(cat /tmp/.awscreds |jq -r '.Credentials.SessionToken' /tmp/.awscreds)
echo "== Updating creds"
sed -i '' "/^\[mfa\]/{n;n;n;s/^.*$/aws_access_key_id = $AWS_ACCESSKEYID/;}" ~/.aws/credentials
sed -i '' "/^\[mfa\]/{n;n;n;n;s|^.*$|aws_secret_access_key = $AWS_SECRETACCESSKEY|;}" ~/.aws/credentials
sed -i '' "/^\[mfa\]/{n;n;n;n;n;s|^.*$|aws_session_token = $AWS_SESSIONTOKEN|;}" ~/.aws/credentials
rm /tmp/.awscreds
echo "== Complete"
