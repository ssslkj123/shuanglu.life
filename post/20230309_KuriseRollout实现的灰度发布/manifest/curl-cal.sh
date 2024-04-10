#!/bin/bash
#GREP_ARGS=$1
#echo $GREP_ARGS
f=0
for i in {1..151}
 do
   R=$(curl  --silent  -H "user-agent: pc " -H "Host: echoserver.caocaokeji.cn" alb-g2jxqzz0nxknlsapxl.cn-hangzhou.alb.aliyuncs.com/apis/echo |grep -iE '5f479f46fc' |awk '{print $2}')
   #R=$(curl  --silent   -H "Host: echoserver.caocaokeji.cn" alb-g2jxqzz0nxknlsapxl.cn-hangzhou.alb.aliyuncs.com/apis/echo |grep -iE 'l7xgl' |awk '{print $2}')
   #R=$(curl  --silent   http://echoserver.nginx-example.com/apis/echo |grep -iE '6cwzd|abc' |awk '{print $2}')
   #echo $R
   if  [ "$R" != "" ] ; then
   # f=`expr $f + 1`
        let f++
        echo $f $R
   #else
   #echo "curl  --silent   http://echoserver.nginx-example.com/apis/echo |grep -i '$GREP_ARGS'| awk '{print \$2}'"
   fi
done
