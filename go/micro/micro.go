// Package micro provides a macro ALL in one go-micro
package micro

import (
	"github.com/micro/go-micro"
	_ "github.com/micro/macro"
)

// NewService returns a new macro micro.Service
func NewService(opts ...micro.Option) micro.Service {
	return micro.NewService(opts...)
}
