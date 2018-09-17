# Bot Saves Princess

So, here we have the following input: 

```
3
---
-m-
p--
```

let's beautify like this:

```
      0     1     2
   +-----+-----+-----+
0  |     |     |     |
   +-----+-----+-----+
1  |     |  m  |     |
   +-----+--|--+-----+
2  |  p  |<-+  |     |
   +-----+-----+-----+
```

we need to know the moves for `m` to reach `p`. <br />
In that case, the solution is:

```
DOWN
LEFT
```

It is really simple to figure out how to find the solution:

1) We have to find the princess' row, so we lookup every row until we find which one contains the `p` character.
   In that case: `2`
2) We have to find the bot's row, which is `1`
3) We have to find the princess' column, which is `0`
4) We have to find the bot's row, which is `1`

So now we have the following matrix:

```js
const positions = [ [2 , 0], [0, 1] ]
```

let's beautify that matrix:

```js
[
  [
    2,  // Princess column
    0   // Princess row
  ],
  [
    0,  // Bot column
    1   // Bot row
  ]
]
```

Now we want to move down twice 'cause `positions[0][0] - positions[1][0] = 2` and we want to move down only once 'cause `positions[0][1] - positions[1][1] = 1`.

But what if we have negative results?
Let's add a simple condition.

```js

const tableSize = 3 // It is always a n*n square, so columns count is equal to rows count.

for (let i = 0; i < tableSize; i++) {

  if (positions[0][0] < positions[1][0]) {
    console.log('DOWN')
    positions[1][0]--     // We want to decrease our bot position number, because we just have 3 moves.
  }

  // other conditions on the previous matrix

}
```

So we're done!