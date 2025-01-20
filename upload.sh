if [ -f ~/rom/out/target/product/RMX1941/xdCLO_*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Uploading Build $(cd ~/rom/out/target/product/RMX1941/ && ls xdCLO_*.zip)"
      rclone copy ~/rom/out/target/product/RMX1941/xdCLO_*.zip nath:havoc -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="Build $(cd ~/rom/out/target/product/RMX1941/ && ls xdCLO_*.zip) Uploaded Successfully!"
fi
