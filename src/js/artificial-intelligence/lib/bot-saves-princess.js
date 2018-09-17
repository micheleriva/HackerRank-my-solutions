function processData(input) {
  const lines     = input.split('\n')
  const dimension = parseInt(lines[0])
  let grid        = new Array()
  
  for(let i = 1; i <= dimension; ++i) {
    grid.push(lines[i])
  }

  return displayPathtoPrincess(dimension, grid)
}

const princessId = /p/
const botId      = /m/

function findIndex (source, id) {
  return source.map((gr, i) => id.exec(gr) && i).join('')
}

function displayPathtoPrincess(dimension, grid) {

  let rowPrincess = Number(findIndex(grid, princessId))
  let rowBot      = Number(findIndex(grid, botId))
  let colPrincess = Number(findIndex(grid[rowPrincess].split(''), princessId))
  let colBot      = Number(findIndex(grid[rowBot].split(''), botId))
      
  let instruction = []

  for(let i = 0; i < dimension; i++) {
    colBot > colPrincess && (instruction.push('LEFT')  && colBot-- )
    colBot < colPrincess && (instruction.push('RIGHT') && colBot++ )
    rowBot > rowPrincess && (instruction.push('UP')    && rowBot-- )
    rowBot < rowPrincess && (instruction.push('DOWN')  && rowBot++ ) 
  }

  return console.log(instruction.join('\n'))

}

/* HackerRank stuff */
process.stdin.resume();
process.stdin.setEncoding("ascii");
_input = "";

process.stdin.on("data", function (input) {
  _input += input;
});

process.stdin.on("end", function () {
 processData(_input);
});
