#!/bin/sh
echo "Installing: Nginx($NGX_VER)"
cd /tmp
wget -O- -q http://nginx.org/download/nginx-${NGX_VER}.tar.gz | tar xz
cd nginx-${NGX_VER}
mkdir ext
cd ext
wget -O- -q http://labs.frickle.com/files/ngx_cache_purge-${NGX_CP_VER}.tar.gz | tar xz
wget -O- -q https://github.com/grahamedgecombe/nginx-ct/archive/${NGX_CT_VER}.tar.gz | tar xz
wget -O- -q https://codeload.github.com/pagespeed/ngx_pagespeed/tar.gz/v${NGX_PS_VER}-beta
cd ../ngx_pagespeed-${NGX_PS_VER}-beta
wget -O- -q https://dl.google.com/dl/page-speed/psol/${NGX_PS_VER}.tar.gz
cd ../
mkdir vendor
cd vendor
wget -O- -q https://www.openssl.org/source/openssl-${OPENSSL_VER}.tar.gz | tar xz
./configure --prefix=/etc/nginx --sbin-path=/usr/sbin/nginx --conf-path=/etc/nginx/nginx.conf --error-log-path=/var/log/nginx/error.log --http-log-path=/var/log/nginx/access.log --pid-path=/var/run/nginx.pid --lock-path=/var/run/nginx.lock --http-client-body-temp-path=/var/cache/nginx/client_temp --http-proxy-temp-path=/var/cache/nginx/proxy_temp --http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp --http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp --http-scgi-temp-path=/var/cache/nginx/scgi_temp --user=nginx --group=nginx --with-http_ssl_module --with-http_realip_module --with-http_addition_module --with-http_sub_module --with-http_dav_module --with-http_flv_module --with-http_mp4_module --with-http_gunzip_module --with-http_gzip_static_module --with-http_random_index_module --with-http_secure_link_module --with-http_stub_status_module --with-http_auth_request_module --with-threads --with-stream --with-stream_ssl_module --with-http_slice_module --with-mail --with-mail_ssl_module --with-file-aio --with-http_v2_module --with-cc-opt='-g -O2 -fstack-protector --param=ssp-buffer-size=4 -Wformat -Werror=format-security -Wp,-D_FORTIFY_SOURCE=2' --with-ld-opt='-Wl,-Bsymbolic-functions -Wl,-z,relro -Wl,--as-needed' --with-ipv6 --add-module=`pwd`/ext/ngx_cache_purge-${NGX_CP_VER} --add-module=`pwd`/ext/nginx-ct-${NGX_CT_VER} --add-module=`pwd`/ext/ngx_pagespeed-${NGX_PS_VER}-beta --with-openssl=`pwd`/vendor/openssl-${OPENSSL_VER}
make -j`grep -c ^processor /proc/cpuinfo`
paco -ua
paco -lp nginx "make install"
cd ../
rm -rf /tmp/nginx-${NGX_VER}
echo "Nginx Installation Complete."
