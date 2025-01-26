# GoLang GPIO Libary for Raspberry Pi

# Libarys: go-gpiocdev


Installing:

```sh
go get github.com/warthog618/go-gpiocdev
```


- Blinking Test:
```sh
mkdir blink
cd blink
go mod init blink
go get github.com/warthog618/go-gpiocdev
```


- Creating a new blink.go package:
```sh
sudo bash -c 'cat <<EOF > blink.go
package main

import (
    "time"
    "github.com/warthog618/go-gpiocdev"
)

func main() {
    chip, err := gpiocdev.NewChip("gpiochip0")
    if err != nil {
        panic(err)
    }
    defer chip.Close()

    line, err := chip.RequestLine(17, gpiocdev.AsOutput(0))
    if err != nil {
        panic(err)
    }

    for {
        line.SetValue(1)
        time.Sleep(500 * time.Millisecond)
        line.SetValue(0)
        time.Sleep(500 * time.Millisecond)
    }
}
EOF'
```

