#! /bin/bash

if [ "${SIDECARSET_VERSION}" == "0" ]; then
  echo "empty image"
  exit 0
fi

#默认排水时间45s,默认优雅退出时间60s 多放5秒
for a in `seq 110`;
do
 if [ -e "/etc/istio/proxy/result" ];then
   echo "check start success"
   rm -f /etc/istio/proxy/result
   exit 0
 fi
 sleep 1
# echo "begin to check $a" >> /etc/istio/proxy/check.log
done

echo "time reach exit"
exit 0
