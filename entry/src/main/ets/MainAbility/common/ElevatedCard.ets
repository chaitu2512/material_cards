
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
        Text('OVERLINE')
          .fontSize(15)
          .fontWeight(FontWeight.Bold)
          .padding({ top: 16, left: 16 })
          .alignSelf(ItemAlign.Start)
        Text('Title')
          .fontSize(25)
          .fontWeight(FontWeight.Bolder)
          .padding({left: 16 })
          .alignSelf(ItemAlign.Start)
        Text('Secondary Text')
          .fontSize(16)
          .fontWeight(FontWeight.Normal)
          .padding({left: 16 })
          .alignSelf(ItemAlign.Start)
        Text('SubText goes here SubText goes here SubText ' +
        'goes here SubText goes here SubText goes here SubText goes here')
          .fontSize(15)
          .fontWeight(FontWeight.Medium)
          .margin({ left: 16 ,top : 8 })
          .alignSelf(ItemAlign.Start)
      }.width(252)
//      if(this.model.cardTitleImage=='right'){
//        Image($r("app.media.icon")).objectFit(ImageFit.Cover).width(40).height(40).padding({ left: 16, top: 16 })
//      }
      if(this.model.cardImageType=='right' || this.model.cardTitleImage=='right'){
        Image($r("app.media.icon")).objectFit(ImageFit.Cover).width(80).height(80).padding({ left: 16, top: 16 })
      }
    }.width(344)
    //.alignSelf(ItemAlign.Start)
    if(this.model.cardImageType=='middle'){
      Image($r("app.media.icon")).objectFit(ImageFit.Cover).width(344).height(192)
    }
//    Row(){
//      for (var index = 0; index < array.length; index++) {
//        const element = array[index];
//
//      }
//    }
    Row() {
      Button('Action 1', { type: ButtonType.Capsule, stateEffect: true })
        .backgroundColor(0x317aff)
        .width(90)
        .margin({ left: 8, top: 16, bottom: 16 })
      Button('Action 2', { type: ButtonType.Capsule, stateEffect: true })
        .backgroundColor(0x317aff)
        .width(90)
        .margin({ left: 8, top: 16, bottom: 16 })
    }.width(344).justifyContent(FlexAlign.Start)
    if(this.model.cardImageType=='bottom'){
      Image($r("app.media.icon")).objectFit(ImageFit.Cover).width(344).height(192)
    }
  }
  .borderWidth(3)
  .borderRadius(10)
  .margin({ bottom: 20, top: 20 })
  .width(344)
  .backgroundColor('#fff4ffd1')
}
}