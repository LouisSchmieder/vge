module main

import os

const(
	input_file = 'a'
	output_file = 'a'
)

fn main() {
	data := os.read_file(input_file) or { panic(err) }
	mut values := map[string]string
	for line in data.split_into_lines() {
		a := line.split(' = ')
		if a[1][0] != `v` {
			values[a[0]] = a[1]
		} else {
			values[a[0]] = values[a[1]]
		}
	}

	mut end := ''
	for k, v in values {
		end += '$k = $v\n'
	}

	os.write_file(output_file, end) or { panic(err) }
}