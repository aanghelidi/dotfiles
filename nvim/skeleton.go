package main

import (
	"bufio"
	"fmt"
	"os"
)

// #Storing a direction is just the numbers -1, +1i, +1, -1i instead of up/right/down/left or north/east/south/west.
// #Rotating the direction is just multiplying with -1i (clockwise) or +1i (counter-clockwise).
// #In this example x == real == row and y == imag == col. When x and y are swapped, the rotation goes in the other direction`
// neighbourDeltas := []complex128{complex(-1.0, 0.0), complex(-1.0, 0.0), complex(0.0, -1.0), complex(0.0, 1.0)}
// type Grid map[complex128]struct{}

func main() {
	ans := 0
	f, _ := os.Open("input.txt")
	defer f.Close()
	scanner := bufio.NewScanner(f)
	for scanner.Scan() {
		var num int
		fmt.Sscanf(scanner.Text(), "%d", &num)
		ans += num
	}
	fmt.Println(ans)
}
