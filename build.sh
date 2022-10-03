wget https://go.dev/dl/go1.19.1.linux-ppc64le.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.19.1.linux-ppc64le.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version
git clone https://github.com/stedolan/jq.git
cd jq         

#Building jq            
git submodule update --init
autoreconf -fi 
./configure --with-oniguruma=builtin
make -j8
make check
