export namespace button {
  export class Model {
    isText : boolean = false
    buttonColor : string = undefined
    buttonText  : string = undefined
    buttonTextColor : string =undefined
    buttonType : ButtonType = ButtonType.Capsule
    buttonHeight : number = 90
    buttonWidth : number = 30
    fontSize : number = 15
    constructor(isText : boolean , buttonText : string ,
                buttonTextColor : string ,buttonColor : string , fontSize : number,buttonType: ButtonType =ButtonType.Capsule,
                buttonHeight :number = 90, buttonWidth : number=30){
      this.isText= isText
      this.buttonText = buttonText
      this.buttonTextColor = buttonTextColor
      this.buttonColor= buttonColor
      this.fontSize = fontSize
      this.buttonType =buttonType
      this.buttonHeight = buttonHeight
      this.buttonWidth =buttonWidth
    }
  }
}