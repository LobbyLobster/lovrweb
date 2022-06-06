package main
import (
    "fmt"
    "log"
    "net/http"
)
func index(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "Hi there, welcome to %s!", r.URL.Path[1:])
}
func main() {
	fs := http.FileServer(http.Dir("static/"))

    http.HandleFunc("/", index)
	http.Handle("/static/", http.StripPrefix("/static/", fs))

    log.Fatal(http.ListenAndServe(":8080", nil))
}
