wget https://go.dev/dl/go1.19.1.linux-ppc64le.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.19.1.linux-ppc64le.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version
wget https://github.com/stedolan/jq/archive/refs/tags/jq-1.6.tar.gz
tar -xvf jq-1.6.tar.gz
cd jq-jq-1.6            

#Building jq            
git submodule update --init
autoreconf -fi 
./configure --with-oniguruma=builtin
make -j8
make check
