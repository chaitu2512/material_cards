
import {Elevated} from './Elevated'

@Component

export struct ElevatedCard {
  model: Elevated.Model = new Elevated.Model()
build() {
  Column() {
    if(this.model.cardImageType=='top'){
      Image($r("app.media.icon")).objectFit(ImageFit.Cover).width(344).height(192)
    }
    Row() {
      if(this.model.cardImageType=='left' || this.model.cardTitleImage =='left'){
        Image($r("app.media.icon")).objectFit(ImageFit.Cover).width(80).height(80).padding({ left: 16, top: 16 })
      }
//      if(this.model.cardTitleImage =='left'){
//        Image($r("app.media.icon")).objectFit(ImageFit.Cover).width(40).height(40).padding({ left: 16, top: 16 })
//      }
      Column() {
        if(this.model.needOver) {
          Text(this.model.overLineText)
            .fontSize(15)
            .fontWeight(FontWeight.Bold)
            .padding({ top: 16, left: 16 })
            .alignSelf(ItemAlign.Start)
        }
        Text(this.model.titleText)
          .fontSize(25)
          .fontWeight(FontWeight.Bolder)
          .padding({left: 16 })
          .alignSelf(ItemAlign.Start)
        if(this.model.needSecondaryText) {
          Text(this.model.secondaryText)
            .fontSize(this.model.secondaryTextFontSize)
            .fontWeight(FontWeight.Normal)
            .padding({ left: 16 })
            .alignSelf(ItemAlign.Start)
        }
        if(this.model.needSubText) {
          Text(this.model.subText)
            .fontSize(this.model.subTextFontSize)
            .fontWeight(FontWeight.Medium)
            .margin({ left: 16, top: 8 })
            .alignSelf(ItemAlign.Start)
        }
      }.width('74%')
//      if(this.model.cardTitleImage=='right'){
//        Image($r("app.media.icon")).objectFit(ImageFit.Cover).width(40).height(40).padding({ left: 16, top: 16 })
//      }
      if(this.model.cardImageType=='right' || this.model.cardTitleImage=='right'){
        Image($r("app.media.icon")).objectFit(ImageFit.Cover).width(80).height(80).padding({ left: 16, top: 16 })
      }
    }.width(this.model.cardWidth)
    .alignSelf(ItemAlign.Start)
    if(this.model.cardImageType=='middle'){
      Image($r("app.media.icon")).objectFit(ImageFit.Cover).width(344).height(192)
    }
//    Row(){
//      for (var index = 0; index < array.length; index++) {
//        const element = array[index];
//
//      }
//    }

    Divider().margin({top:8,left :16 ,right :16}).strokeWidth(1)
    Column(){
    Text('Subtitle').margin({top :16 , left :16 ,right : 8}).fontWeight(FontWeight.Normal).fontSize(20).alignSelf(ItemAlign.Start)
    Flex({ wrap: FlexWrap.Wrap }){
      Button('Item 1', { type: ButtonType.Capsule, stateEffect: true })
        .backgroundColor(0x317aff)
        .width(90)
        .margin({ left: 8, top: 8 ,bottom: 8 })
      Button('Item 2', { type: ButtonType.Capsule, stateEffect: true })
        .backgroundColor(0x317aff)
        .width(90)
        .margin({ left: 8, top: 8, bottom: 8 })
      Button('Item 3', { type: ButtonType.Capsule, stateEffect: true })
        .backgroundColor(0x317aff)
        .width(90)
        .margin({ left: 8, top: 8, bottom: 8 })
      Button('Item 4', { type: ButtonType.Capsule, stateEffect: true })
        .backgroundColor(0x317aff)
        .width(90)
        .margin({ left: 8, top: 8, bottom: 8 })
      Button('Item 5', { type: ButtonType.Capsule, stateEffect: true })
        .backgroundColor(0x317aff)
        .width(90)
        .margin({ left: 8, top: 8, bottom: 8 })
    }.width(this.model.cardWidth)
    }.width(this.model.cardWidth)

    Row() {
      if(this.model.needAction1) {
        Button('Action 1', { type: ButtonType.Capsule, stateEffect: true })
          .backgroundColor(0x317aff)
          .width(90)
          .margin({ left: 8, top: 16, bottom: 16 })
      }
      if(this.model.needAction2) {
        Button('Action 2', { type: ButtonType.Capsule, stateEffect: true })
          .backgroundColor(0x317aff)
          .width(90)
          .margin({ left: 8, top: 16, bottom: 16 })
      }
    }.width(this.model.cardWidth).justifyContent(FlexAlign.Start)
    if(this.model.cardImageType=='bottom'){
      Image($r("app.media.icon")).objectFit(ImageFit.Cover).width(344).height(192)
    }
  }
  .borderWidth(3)
  .borderRadius(10)
  .margin({ bottom: 20, top: 20 })
  .width(this.model.cardWidth)
  .backgroundColor(this.model.backGroundColor)
}
}