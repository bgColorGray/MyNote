1. ```
   declare -A port_map=(
       ["zhengjingjing"]=2204
   )
   
   # 循环遍历用户列表
   for user in "${!port_map[@]}"
   do
       # 获取用户对应的端口号
       port="${port_map[$user]}"
       
       # 创建容器，将指定的端口号分配给容器
       docker run -itd -p "$port":22 -h "docker-$user" --name "$user" -v "/pool_sn640/userDir/$user:/root/$user" -v "/pool_sn640/userDir/share:/root/share" c7105f63fae3
       
       docker exec "$user" git config --global user.name "$user"
       docker exec "$user" git config --global user.email "$user@nbbsw.com"
       
       # 打印端口与用户的对应关系
       echo "User: $user, Port: $port"
   done
   ```

   
