import { CardModel, CardType } from './cardModel'

@Component
export struct MaterialCard {
  @State private model: CardModel = undefined
  gridString : string = ''
  aboutToAppear(){
    for (var index = 0; index < Math.floor((this.model.getButtons().length-1)/3)+1; index++) {
      this.gridString+='1fr '
    }
  }
  build() {
    Column() {
      // UI
      Row() {
        if(this.model.getLeadingIcon()!=undefined){
            Image($r("app.media.disneylogo"))
              .objectFit(ImageFit.Cover)
              .width(this.model.getLeadingIconWidth())
              .height(this.model.getLeadingIconHeight())
              .padding({ left: 8, top: 16, right: 8 })
        }
        Column(){
          Text(this.model.getTitle())
            .fontSize(25)
            .fontWeight(FontWeight.Bolder)
            .margin({top : 8 , left: 8})
            .alignSelf(ItemAlign.Start)
          Text(this.model.getSubTitle())
            .fontSize(15)
            .fontWeight(FontWeight.Normal)
            .margin({ left: 8})
            .alignSelf(ItemAlign.Start)
        }.width('65%')
      }.width(this.model.getCardWidth())
      .height(80)
      if(this.model.getMediaIcon()!=undefined) {
        Image($r('app.media.brave'))
          .objectFit(ImageFit.Cover)
          .width(this.model.getMediaIconWidth())
          .height(this.model.getMediaIconHeight())
          .margin(16)
      }
      if(this.model.getSupportingText()!=""){
        Text(this.model.getSupportingText())
          .fontSize(15)
          .fontWeight(FontWeight.Normal)
          .margin(16)
          .alignSelf(ItemAlign.Start)
      }
      if(this.model.getShowDivider()){
        Divider().margin(4).strokeWidth(1)
      }
      if(this.model.getButtons().length!=0){
        Column() {
          Text(this.model.getButtonHeader())
            .margin({ top: 16, left: 16 })
            .fontWeight(FontWeight.Bold)
            .fontSize(22)
            .alignSelf(ItemAlign.Start)
          Grid() {
            ForEach(this.model.getButtons(), (item) => {
              GridItem() {
                Button(item.buttonText, { type: item.buttonType, stateEffect: true })
                  .backgroundColor(item.buttonColor)
                  .width(item.buttonWidth)
                  .height(item.buttonHeight)
                  .margin({ left: 16, top: 8, bottom: 8 })
                  .borderRadius(8)
                  .fontColor(item.buttonTextColor)
              }
            }, item => item.buttonId)
          }
          .columnsTemplate('1fr 1fr 1fr')
          .rowsTemplate(this.gridString)
          .width('90%')
          .height(70)
          .columnsGap(5)
          .rowsGap(5)
        }.width(this.model.getMediaIconWidth())
      }

    }
    .borderWidth(this.model.getCardType()==CardType.Outlined?this.model.getCardBorderWidth():0)
    .borderRadius(this.model.getBorderRadius())
    .margin({ top: 16 })
    .height(this.model.getCardHeight())
    .width(this.model.getCardWidth())
    .backgroundColor(this.model.getCardBackgroundColor())
    .borderColor(this.model.getCardBorderColor())
    .shadow({radius : this.model.getCardType() == CardType.Elevated ? this.model.getShadowRadius() : 0,})
  }
}