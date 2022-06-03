
import {SubHead} from './SubHeadCard'

@Component

export struct SubHeadCard {
  @State model: SubHead.Model = new SubHead.Model()
  build(){
    Flex({justifyContent: FlexAlign.SpaceAround, alignItems: ItemAlign.Center}){
      Image($r("app.media.icon")).objectFit(ImageFit.Cover).width('20%').height('80%')
      Flex({direction : FlexDirection.Column ,justifyContent: FlexAlign.SpaceEvenly, alignItems: ItemAlign.Center}){
        Text("Title").fontSize(25).fontWeight(FontWeight.Bolder).width('70%');
        Text("SubText goes here SubText here here here herehere").fontSize(15).fontWeight(FontWeight.Bold).width('70%');
      }
    }.borderWidth().borderRadius(10).height(90).margin({bottom: 20}).width(320).backgroundColor('#ffffc6');
  }
}

