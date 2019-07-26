yum  groupinstall "Development tools" -y
yum install -y pcre* gzip*  zlib* libxml* *xslt* gd gd-devel geoip geoip-devel 
wget https://openresty.org/download/openresty-1.15.8.1.tar.gz
wget https://www.openssl.org/source/openssl-1.1.0k.tar.gz
tar zxvf openssl-1.1.0k.tar.gz 
tar zxvf openresty-1.15.8.1.tar.gz
cd openresty-1.15.8.1
./configure --prefix=/opt/OpenResty  --with-threads  --with-file-aio    --with-ipv6     --with-http_v2_module   --with-http_realip_module    --with-http_addition_module    --with-http_xslt_module   --with-http_image_filter_module    --with-http_geoip_module    --with-http_sub_module   --with-http_dav_module    --with-http_mp4_module   --with-http_dav_module    --with-http_gunzip_module  --with-http_auth_request_module    --with-http_random_index_module     --with-http_secure_link_module    --with-http_slice_module   --with-http_stub_status_module   --with-openssl=/root/openssl-1.1.0k
gmake
gmake install
