export namespace button {
  export class Model {
    buttonColor : string = undefined
    buttonText  : string = undefined
    buttonTextColor : string =undefined
    buttonType : ButtonType = undefined
    buttonHeight : number =undefined
    buttonWidth : number = undefined
    constructor(buttonColor : string , buttonText : string ,
                buttonTextColor : string, buttonType: ButtonType ,
                buttonHeight :number , buttonWidth : number){
      this.buttonColor= buttonColor
      this.buttonText = buttonText
      this.buttonTextColor = buttonTextColor
      this.buttonType =buttonType
      this.buttonHeight = buttonHeight
      this.buttonWidth =buttonWidth
    }
  }
}