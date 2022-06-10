
import {Elevated} from './Elevated'

@Component

export struct ElevatedCard {
  model: Elevated.Model = new Elevated.Model()
build() {
  Column() {
    if(this.model.cardImageType=='top'){
      Image($r("app.media.brave")).objectFit(ImageFit.Cover).width(340).height(192).margin({bottom : 16})
    }
    Row() {
      if(this.model.cardTitleImage =='left'){
        Image($r("app.media.disneylogo")).objectFit(ImageFit.Cover).width(80).height(80).padding({ left: 16, top: 16 }).borderRadius(8)
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

      }.width('74%')
//      if(this.model.cardTitleImage=='right'){
//        Image($r("app.media.icon")).objectFit(ImageFit.Cover).width(40).height(40).padding({ left: 16, top: 16 })
//      }
      if(this.model.cardTitleImage=='right'){
        Image($r("app.media.disneylogo")).objectFit(ImageFit.Cover).width(80).height(80).padding({ left: 16, top: 16 })
      }
    }.width(this.model.cardWidth)
    .alignSelf(ItemAlign.Start)
    if(this.model.cardImageType=='middle'){
      Image($r("app.media.brave")).objectFit(ImageFit.Cover).width(this.model.cardWidth).height(192)
    }
    if(this.model.needSubText) {
      Text(this.model.subText)
        .fontSize(this.model.subTextFontSize)
        .fontWeight(FontWeight.Medium)
        .margin({ left: 16, top: 16 })
        .alignSelf(ItemAlign.Start)
    }
//    Row(){
//      for (var index = 0; index < array.length; index++) {
//        const element = array[index];
//
//      }
//    }
    if(this.model.needSubTitle) {
      Divider().margin({ top: 16, left: 16, right: 16 }).strokeWidth(1)
      Column() {
        Text('Subtitle')
          .margin({ top: 16, left: 16, right: 8 })
          .fontWeight(FontWeight.Normal)
          .fontSize(20)
          .alignSelf(ItemAlign.Start)
          Grid() {
            ForEach(this.model.buttonArray, (item) => {
              GridItem() {
                Text('day')
                  .fontSize(16)
                  .backgroundColor(0xF9CF93)
                  .width('100%')
                  .height('100%')
                  .textAlign(TextAlign.Center)
//                Button('Item 1', { type: item.buttonType, stateEffect: true })
//                  .backgroundColor(item.buttonColor)
//                  .width(item.buttonWidth)
//                  .height(item.buttonHeight)
//                  .margin({ left: 16, top: 8, bottom: 8 })
//                  .borderRadius(8)
//                  .fontColor(item.buttonTextColor)
              }
            },item => item)
          }.columnsTemplate('1fr 1fr')
          .rowsTemplate('1fr 1fr')
          .width('90%')
          .height(100)
//          Button('Item 3', { type: ButtonType.Normal, stateEffect: true })
//            .backgroundColor('#ff000000')
//            .width(90)
//            .height(30)
//            .margin({ left: 16, top: 8, bottom: 8 })
//            .backgroundColor(Color.Orange)
//            .borderRadius(8)
//          Button('Item 3', { type: ButtonType.Normal, stateEffect: true })
//            .backgroundColor('#ff000000')
//            .width(90)
//            .height(30)
//            .margin({ left: 16, top: 8, bottom: 8 })
//            .backgroundColor(Color.Orange)
//            .borderRadius(8)
//          Button('Item 4', { type: ButtonType.Normal, stateEffect: true })
//            .backgroundColor('#ff000000')
//            .width(90)
//            .height(30)
//            .margin({ left: 16, top: 8, bottom: 8 })
//            .backgroundColor(Color.Orange)
//            .borderRadius(8)
//          Button('Item 5', { type: ButtonType.Normal, stateEffect: true })
//            .backgroundColor('#ff000000')
//            .width(90)
//            .height(30)
//            .margin({ left: 16, top: 8, bottom: 8 })
//            .backgroundColor(Color.Orange)
//            .borderRadius(8)
        }.width(this.model.cardWidth)
    }
    Row() {
      if(this.model.action1!=undefined) {
        Button(this.model.action1.buttonText, { type: this.model.action1.buttonType, stateEffect: true })
          .backgroundColor(this.model.action1.buttonColor)
          .width(this.model.action1.buttonWidth)
          .margin({ left: 8, top: 16, bottom: 16 })
          .height(this.model.action1.buttonHeight)
          .fontColor(this.model.action1.buttonTextColor)
          .fontSize(this.model.action1.fontSize)
      }
      if(this.model.action2.isText) {
          Text(this.model.action2.buttonText)
            .fontColor(this.model.action2.buttonTextColor)
            .fontSize(this.model.action2.fontSize)
            .fontWeight(FontWeight.Bold)
            .width(90)
            .margin({ left: 8, top: 16, bottom: 16 })
      }
      else{
        Button('Action 2', { type: ButtonType.Capsule, stateEffect: true })
          .backgroundColor(0x317aff)
          .width(90)
          .margin({ left: 8, top: 16, bottom: 16 })
      }
    }.width(this.model.cardWidth).justifyContent(FlexAlign.Start)
    if(this.model.cardImageType=='bottom'){
      Image($r("app.media.brave")).objectFit(ImageFit.Cover).width(344).height(192)
    }
  }
  .borderWidth(this.model.borderWidth)
  .borderRadius(this.model.borderRadius)
  .margin({ top: 20 })
  .height(this.model.cardHeight)
  .width(this.model.cardWidth)
  .backgroundColor(this.model.backGroundColor)
  .borderColor(this.model.borderColor)

}
}