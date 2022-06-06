
// @ts-ignore
import {SubHead} from '../common/SubHead'
import {SubHeadCard} from '../common/SubHeadCard'
@Entry
@Component
struct Index {

//  model : SubHead.Model = new SubHead.Model()
//  aboutToAppear(){
//    this.model.setBorderWidth(1)
//    this.model.setSrcPath('app.media.icon')
//  }
//  build() {
//    Column(){
//    SubHeadCard({
//       model : this.model
//    })
//    }.width('100%')
build() {
  //    Flex({justifyContent: FlexAlign.SpaceAround, alignItems: ItemAlign.Center}){
  //     Image($r("app.media.icon")).objectFit(ImageFit.Cover).width('20%').height('80%')
  //     Flex({direction : FlexDirection.Column ,justifyContent: FlexAlign.SpaceEvenly, alignItems: ItemAlign.Center}){
  //        Text("Title").fontSize(25).fontWeight(FontWeight.Bolder).width('70%');
  //        Text("SubText goes here SubText here here here herehere").fontSize(15).fontWeight(FontWeight.Bold).width('70%');
  //      }
  //    }.borderWidth(2).borderRadius(10).height(100).margin({bottom: 20}).width(320).backgroundColor('#ffffc6');
  Column() {
    Column() {
      Row() {
        Column() {
          Text('Title')
            .fontSize(25)
            .fontWeight(FontWeight.Bolder)
            .padding({ top: 16, left: 16 })
            .alignSelf(ItemAlign.Start)
          Text('SubText goes here SubText goes here SubText goes here')
            .fontSize(15)
            .fontWeight(FontWeight.Medium)
            .padding({ left: 16 })
            .alignSelf(ItemAlign.Start)
        }.width(252).height(96)

        Image($r("app.media.icon")).objectFit(ImageFit.Cover).width(80).height(80).padding({ left: 16, top: 16 })
      }.width(344).height(96).alignSelf(ItemAlign.Start)

      Row() {
        Button('Action 1', { type: ButtonType.Capsule, stateEffect: true })
          .backgroundColor(0x317aff)
          .width(90)
          .margin({ left: 8, top: 8, bottom: 8 })
        Button('Action 2', { type: ButtonType.Capsule, stateEffect: true })
          .backgroundColor(0x317aff)
          .width(90)
          .margin({ left: 8, top: 8, bottom: 8 })
      }.width(344).height(52).justifyContent(FlexAlign.Start)
    }
    .borderWidth(3)
    .borderRadius(10)
    .height(148)
    .margin({ bottom: 20, top :20 })
    .width(344)
    .backgroundColor('#ffabe9b9')
    Column(){
      Row(){
        Image($r("app.media.icon")).objectFit(ImageFit.Cover).width(40).height(40).margin({ left: 16, top: 16 ,bottom :16 })
        Column() {
          Text('Title goes here')
            .fontSize(20)
            .fontWeight(FontWeight.Bolder)
            .margin({ top: 16, left: 16 })
            .alignSelf(ItemAlign.Start)
          Text('Secondary Text')
            .fontSize(12)
            .fontWeight(FontWeight.Medium)
            .padding({ left: 16 })
            .alignSelf(ItemAlign.Start)
        }.width(252).height(72)
      }.height(72).width(344).alignSelf(ItemAlign.Start)
      Image($r("app.media.icon")).objectFit(ImageFit.Cover).width(344).height(194)
      Text('SubText goes here Sub Text goes here SubText goes here')
            .fontSize(16)
            .fontWeight(FontWeight.Medium)
            .padding({ left: 16, top : 12 ,right : 24})
            .alignSelf(ItemAlign.Start)
      Row() {
        Button('Action 1', { type: ButtonType.Capsule, stateEffect: true })
          .backgroundColor(0x317aff)
          .width(90)
          .margin({ left: 16, top: 16, bottom: 8 })
        Button('Action 2', { type: ButtonType.Capsule, stateEffect: true })
          .backgroundColor(0x317aff)
          .width(90)
          .margin({ left: 16, top: 16, bottom: 8 })
      }.width(344).height(52).justifyContent(FlexAlign.Start)
    }.borderWidth(3)
    .borderRadius(10)
    .height(382)
    .margin({ bottom: 20 })
    .width(344)
    .backgroundColor('#ffabe9b9')

  }.width('100%')
}
}