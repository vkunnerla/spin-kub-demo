FROM golang

ADD . /go/src/github.com/spinnaker/k8s-demo

RUN go install github.com/spinnaker/k8s-demo

ADD ./content /content

ENTRYPOINT /go/bin/k8s-demo
