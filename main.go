package main

import (
	"github.com/gin-gonic/gin"
	"log"
)

func main() {
	router := gin.Default()
	router.GET("login", func(context *gin.Context) {
		context.AsciiJSON(200, gin.H{
			"statusCode": 200,
			"data":       "hello-88jjjj",
		})
	})
	log.Fatal(router.Run(":9006"))
}
