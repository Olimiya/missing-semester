#!/bin/bash
# 一直执行一个脚本，直到其出错，读取其标准输出和标准错误流输出到文件中，并输出所有内容。
# 报告输出了多少次

script="possible_error.sh"
log="log.log"

count=0
while bash "$script" >"$log" 2>> "$log"
do
	# 执行成功
	((count++))
done

# 退出后输出所有内容
cat $log

# 报告执行数量
echo "successfully run $count times."
