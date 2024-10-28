package main

import (
	"fmt"
	"net/http"
)

func main() {
	rootHandler := func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Hello, World!\n")
	}
	http.HandleFunc("/", rootHandler)

	http.ListenAndServe(":8080", nil)
}
