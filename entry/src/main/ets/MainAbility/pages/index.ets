// @ts-ignore
import {SubHead} from '../common/SubHead'
@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Flex({justifyContent: FlexAlign.SpaceAround, alignItems: ItemAlign.Center}){
      Image($r("app.media.icon")).objectFit(ImageFit.Cover).width('20%').height('80%')
      Flex({direction : FlexDirection.Column ,justifyContent: FlexAlign.SpaceEvenly, alignItems: ItemAlign.Center}){
        Text("Title").fontSize(25).fontWeight(FontWeight.Bolder).width('70%');
        Text("SubText goes here SubText here here here herehere").fontSize(15).fontWeight(FontWeight.Bold).width('70%');
      }
    }.borderWidth(2).borderRadius(10).height(90).margin({bottom: 20}).width(320).backgroundColor('#ffffc6');
  }
}