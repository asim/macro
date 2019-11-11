module github.com/micro/macro

go 1.13

replace k8s.io/api => k8s.io/api v0.0.0-20190708174958-539a33f6e817

replace k8s.io/apimachinery => k8s.io/apimachinery v0.0.0-20190404173353-6a84e37a896d

replace k8s.io/apiserver => k8s.io/apiserver v0.0.0-20190708180123-608cd7da68f7

replace k8s.io/client-go => k8s.io/client-go v11.0.0+incompatible

replace k8s.io/component-base => k8s.io/component-base v0.0.0-20190708175518-244289f83105

replace github.com/gogo/protobuf => github.com/gogo/protobuf v1.3.0

require (
	github.com/micro/go-micro v1.16.0
	github.com/micro/go-plugins v1.5.1
	github.com/micro/micro v1.16.0
)
