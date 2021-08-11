#! /bin/bash

if [ "${SIDECARSET_VERSION}" == "0" ]; then
  echo "empty image"
  exit 0
fi

#sleep 3s for wait envoy
for a in `seq 2`;
do
	sleep 1
done


/usr/local/bin/pilot-agent wait
if [ $? -eq 0 ]; then
	echo "wait success"
	exit 0
fi

echo "start failed"
exit 1
