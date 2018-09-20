const inquirer = requirer('inquirer')

export default {
  installExtensions: () => {
    const extensions = ['vue', 'react']

    const questions = [{
      type: 'checkbox',
      name: 'extensions',
      message: `Select frameworks to help you download the best extensions:`,
      choices: extensions,
      default: ['vue']
    }]

    return inquirer.prompt(questions)
  }


}
