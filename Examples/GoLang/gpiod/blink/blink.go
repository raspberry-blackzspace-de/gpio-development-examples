package main

import (
    "time"
    "github.com/warthog618/gpiod"
)

func main() {
    chip, err := gpiod.NewChip("gpiochip0")
    if err != nil {
        panic(err)
    }
    defer chip.Close()

    line, err := chip.RequestLine(17, gpiod.AsOutput(0))
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
