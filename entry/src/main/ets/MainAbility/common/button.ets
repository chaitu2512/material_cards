export namespace button {
  export class Model {
    buttonColor : string = undefined
    buttonText  : string = undefined
    buttonTextColor : string =undefined
    buttonType : ButtonType = undefined
    buttonHeight : number =undefined
    buttonWidth : number = undefined
    fontSize : number = undefined
    constructor(buttonColor : string , buttonText : string ,
                buttonTextColor : string, fontSize : number,buttonType: ButtonType ,
                buttonHeight :number , buttonWidth : number,){
      this.buttonColor= buttonColor
      this.buttonText = buttonText
      this.buttonTextColor = buttonTextColor
      this.fontSize = fontSize
      this.buttonType =buttonType
      this.buttonHeight = buttonHeight
      this.buttonWidth =buttonWidth
    }
  }
}