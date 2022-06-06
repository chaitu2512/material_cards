export namespace SubHead {
  export class Model {
    private srcImagePath: string = undefined
    private needBorder: boolean = false
    borderWidth: number = 2
    borderColor: string = '#000000'
    cardLength: number = 320
    cardHeight: number = 90
    titleText: string = 'Title'
    subText: string = 'Sub Text is here'
    textFontSize : number = 25
    subTextFontSize : number = 15
    backGroundColor : string = '#FFFFFF'
    borderRadius : number = 10
    bottomMargin :number =20

    getSrcPath() : string{
      return this.srcImagePath
    }
    setSrcPath(srcPathParam: string) {
      this.srcImagePath = srcPathParam
      return this
    }

    setNeedBorder(needBorderParam: boolean) {
      this.needBorder = needBorderParam
      return this
    }

    setBorderWidth(borderWidthParam: number) {
      this.borderWidth = borderWidthParam
      return this
    }

    setBorderColor(borderColorParam: string) {
      this.borderColor = borderColorParam
      return this
    }

    setCardLength(cardLengthParam: number) {
      this.cardLength = cardLengthParam
      return this
    }

    setCardHeight(cardHeightParam: number) {
      this.cardHeight = cardHeightParam
      return this
    }

    setTitleText(tileTextParam: string) {
      this.titleText = tileTextParam
      return this
    }

    setSubText(subTextParam: string) {
      this.subText = subTextParam
      return this
    }

    reset(): Model {
      this.srcImagePath ='app.media.icon'
      this.needBorder = false
      this.borderWidth = 2
      this.borderColor= '#000000'
      this.cardLength = 320
      this.cardHeight = 90
      this.titleText = 'Title'
      this.subText= 'Sub Text is here'
      this.textFontSize  = 25
      this.subTextFontSize  = 15
      this.backGroundColor  = '#FFFFFF'
      this.borderRadius = 10
      this.bottomMargin =20
      return this
    }
  }
}

export default SubHead