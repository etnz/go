FROM gitpod/workspace-full

# Install custom tools, runtime, etc.
ENV GOPATH=$HOME/go-packages
RUN go get -u -v \
        golang.org/x/review/git-codereview && \
    rm -rf $GOPATH/src && \
    sudo rm -rf $GOPATH/pkg && \
    rm -rf /home/gitpod/.cache/go