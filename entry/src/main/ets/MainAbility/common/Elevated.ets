export namespace Elevated {
    private srcImagePath: string = undefined
    private needBorder: boolean = false
    private borderWidth: number = 2
    private borderColor: string = '#000000'
    private cardLength: number = 320
    private cardHeight: number = 90
    private titleText: string = 'Title'
    private subText: string = 'Sub Text is here'
    private textFontSize : number = 25
    private subTextFontSize : number = 15
    private backGroundColor : string = '#FFFFFF'
    private borderRadius : number = 10
    private bottomMargin : number =20
    private imageposition : string = 'left'
    private action1 : string = undefined
    private action2 : string =undefined

    setSrcImagePath(srcImagePathParam: string) {
      this.srcImagePath = srcImagePathParam
      return this
    }
    setNeedborder(needBorderParam : boolean){
      this.needBorder = needBorderParam
      return this
    }
    setBorderWidth(borderWidthParam : number){
      this.borderWidth = borderWidthParam
      return this
    }
}
