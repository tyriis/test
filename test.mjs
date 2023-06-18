#!/usr/bin/env zx

/* global $, echo */
import 'zx/globals'

const status = await $`git status --short`

const rows = `${status}`.trim().split('\n')
const files = []
for (let row of rows) {
    let columns = row.split(' ').filter((item) => item !== '')
    if (['A', 'M', 'AM'].indexOf(columns[0]) >= 0)  {
      files.push(columns[1])
    }
}
echo`${JSON.stringify({files}, null, 2)}`

