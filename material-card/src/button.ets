export namespace button {
  export class Model {
    private isText : boolean =false
    private buttonId : number = 0
    private buttonColor : string | Resource | Color = Color.Blue
    private buttonText  : string = undefined
    private buttonTextColor : string | Resource | Color = Color.White
    private buttonType : ButtonType = ButtonType.Capsule
    private buttonHeight : number = 90
    private buttonWidth : number = 30
    private fontSize : number = 15
    constructor(
                buttonText : string ,
                isText : boolean  = false ,
                buttonTextColor : string | Resource | Color = Color.White ,
                buttonColor : string | Resource | Color = Color.Blue,
                fontSize : number =15 ,
                buttonType: ButtonType =ButtonType.Capsule,
                buttonHeight :number = 80,
                buttonWidth : number=30){
      this.isText= isText
      this.buttonText = buttonText
      this.buttonTextColor = buttonTextColor
      this.buttonColor= buttonColor
      this.fontSize = fontSize
      this.buttonType =buttonType
      this.buttonHeight = buttonHeight
      this.buttonWidth =buttonWidth
    }
    setIsText(isText : boolean){
      this.isText = isText
      return this
    }
    getIsText() : boolean{
      return this.isText
    }
    getButtonId() : number{
      return this.buttonId
    }
    setButtonText(buttonText : string){
      this.buttonText = buttonText
      return this
    }
    getButtonText() : string {
      return this.buttonText
    }
    setButtonTextColor(buttonTextColor : string | Resource | Color) {
      this.buttonTextColor = buttonTextColor != null ? buttonTextColor : Color.White
      return this
    }
    getButtonTextColor() : string | Resource | Color{
      return this.buttonTextColor
    }
    setButtonColor(buttonColor : string | Resource | Color) {
      this.buttonColor = buttonColor != null ? buttonColor : Color.Blue
      return this
    }
    getButtonColor() : string | Resource | Color{
      return this.buttonColor
    }
    setFontSize(fontSize : number) {
      this.fontSize = fontSize == null ? 15 : fontSize
      return this
    }
    getFontSize() : number {
      return this.fontSize
    }
    setButtonHeight(buttonHeight : number){
      this.buttonHeight = (buttonHeight == null) ? 35 : this.buttonHeight
      return this
    }
    getButtonHeight() : number {
      return this.buttonHeight
    }
    setButtonWidth(buttonWidth : number){
      this.buttonWidth = (buttonWidth == null) ? 90 : this.buttonWidth
      return this
    }
    getButtonWidth() : number {
      return this.buttonWidth
    }
    setButtonType(buttonType : ButtonType){
      this.buttonType = (buttonType != null) ? buttonType : ButtonType.Capsule
    }
    getButtonType() : ButtonType{
      return this.buttonType
    }
  }
}