const chalk = require('chalk')
const clear = require('clear')
const figlet = require('figlet')

clear()

/**
 * Inicio da CLI
 */
console.log(
  chalk.magenta(
    figlet.textSync('The Architect', { horizontalLayout: 'full' })
  )
)

//As funções para fazer as solicitações estarão aqui
