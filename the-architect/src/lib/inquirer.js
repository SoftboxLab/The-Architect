import inquirer from 'inquirer'

export default {
  installExtensions: () => {
    const frameworks = ['vue', 'react']
    const questions = {
      type: 'checkbox-plus',
      name: 'extensions',
      message: `Speak my consecrated, we have here a package of
      extensions for your VSCode,choose your frameworks
      to have an idea of ​​what will be suitable for you`,
      default: ['vue']
    }
  }
}
