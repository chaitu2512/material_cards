import { CardModel, CardType, MediaIconPosition } from './cardModel'

@Component
export struct MaterialCard {
  @State private model: CardModel = undefined
  build() {
    Column() {
      // UI
      if(this.model.getMediaIconPosition() == MediaIconPosition.Top){
        if(this.model.getMediaIcon()!=undefined) {
          Image(this.model.getMediaIcon())
            .objectFit(ImageFit.Cover)
            .width(this.model.getMediaIconWidth())
            .height(this.model.getMediaIconHeight())
            .margin({bottom : 16})
            .borderRadius(this.model.getBorderRadius())
        }
      }
      Row() {
        //Icon that comes ahead of title
        if(this.model.getLeadingIcon()!=undefined && this.model.getMediaIconPosition()!=MediaIconPosition.Right){
            Image(this.model.getLeadingIcon())
              .objectFit(ImageFit.Cover)
              .width(this.model.getLeadingIconWidth())
              .height(this.model.getLeadingIconHeight())
              .padding({ left: 8, top: 16, right: 8 })
        }
        Column(){
          //Title Text
          Text(this.model.getTitle())
            .fontSize(this.model.getTitleFontSize())
            .fontWeight(this.model.getTitleFontWeight())
            .margin({top : 8 , left: this.model.getLeadingIcon()== undefined ? 16 : 8})
            .fontColor(this.model.getTitleFontColor())
            .alignSelf(ItemAlign.Start)
          //SubTitle Text
          Text(this.model.getSubTitle())
            .fontSize(this.model.getSubTitleFontSize())
            .fontWeight(this.model.getSubTitleFontWeight())
            .fontColor(this.model.getSubTitleFontColor())
            .margin({top : 4 , left: this.model.getLeadingIcon()== undefined ? 16 : 8})
            .alignSelf(ItemAlign.Start)
        }.width(this.model.getMediaIconPosition()== MediaIconPosition.Right ? '60%' : '70%')
        if(this.model.getMediaIcon()!=undefined && this.model.getMediaIconPosition() == MediaIconPosition.Right) {
          Image(this.model.getMediaIcon())
            .objectFit(ImageFit.Cover)
            .width(this.model.getMediaIconWidth())
            .height(this.model.getMediaIconHeight())
            .margin(16)
        }
      }.width(this.model.getCardWidth())
      if(this.model.getMediaIcon()!=undefined && this.model.getMediaIconPosition() == MediaIconPosition.Middle) {
        Image(this.model.getMediaIcon())
          .objectFit(ImageFit.Cover)
          .width(this.model.getMediaIconWidth())
          .height(this.model.getMediaIconHeight())
          .margin(16)
      }
      if(this.model.getSupportingText()!=""){
        Text(this.model.getSupportingText())
          .fontSize(15)
          .fontWeight(FontWeight.Normal)
          .margin(8)
          .alignSelf(ItemAlign.Start)
     }
      if(this.model.getShowDivider()){
        Divider().margin(4).strokeWidth(1)
      }
      if(this.model.getButtons().length!=0){
        Column() {
          Text(this.model.getButtonHeader())
            .margin({ top: 16, left: 16, bottom : 4})
            .fontWeight(FontWeight.Bold)
            .fontSize(22)
            .alignSelf(ItemAlign.Start)
          List() {
            ForEach(this.model.getButtons(), (item) => {
              ListItem() {
                Button(item.buttonText, { type: item.buttonType, stateEffect: true })
                  .backgroundColor(item.buttonColor)
                  .width(item.buttonWidth)
                  .height(item.buttonHeight)
                  .margin(8)
                  .borderRadius(8)
                  .fontColor(item.buttonTextColor)
              }
            }, item => item.buttonId)
          }
          .width('90%')
          .height(64)
          .listDirection(Axis.Horizontal)
        }.width(this.model.getMediaIconWidth())
      }
      List() {
        ForEach(this.model.getActions(), (item) => {
          ListItem() {
            if(!item.isText) {
              Button(item.buttonText, { type: item, stateEffect: true })
                .backgroundColor(item.buttonColor)
                .width(item.buttonWidth)
                .height(item.buttonHeight)
                .margin(8)
                .borderRadius(8)
                .fontColor(item.buttonTextColor)
                .fontSize(item.fontSize)
            }
            else{
              Text(item.buttonText)
                .width(item.buttonWidth)
                .height(item.buttonHeight)
                .margin(8)
                .borderRadius(8)
                .fontColor(item.buttonTextColor)
                .fontSize(item.fontSize)
            }
          }
        }, item => item.buttonId)
      }
      .listDirection(Axis.Horizontal)
      .width('95%')
      .height(50)
    }
    .borderWidth((this.model.getCardType()==CardType.Outlined)?this.model.getCardBorderWidth():0)
    .borderRadius(this.model.getBorderRadius())
    .margin({ top: 16 })
    .height(this.model.getCardHeight())
    .width(this.model.getCardWidth())
    .backgroundColor(this.model.getCardBackgroundColor())
    .borderColor(this.model.getCardBorderColor())
    .shadow({radius : this.model.getCardType() == CardType.Elevated ? this.model.getShadowRadius() : 0,
              color : this.model.getShadowColor()})
  }
}