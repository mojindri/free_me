#only windows
#my system has access to internet behind proxy just remove --env https_proxy s :D
set shell := ["Powershell.exe", "/c"]

compile-container:
    docker run --rm --env HTTPS_PROXY="http://192.168.0.100:3128"  -v ${pwd}:/usr/src/myapp -w /usr/src/myapp rust:latest  cargo build --release