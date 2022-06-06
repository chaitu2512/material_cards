
import {SubHead} from './SubHead'

@Component

export struct SubHeadCard {
  model: SubHead.Model = new SubHead.Model()
  build(){
    Flex({justifyContent: FlexAlign.SpaceAround, alignItems: ItemAlign.Center}){
      if(this.model.getSrcPath()!=undefined){
        Image($r(this.model.getSrcPath())).objectFit(ImageFit.Cover).width('20%').height('80%')
      }
      Flex({direction : FlexDirection.Column ,justifyContent: FlexAlign.SpaceEvenly, alignItems: ItemAlign.Center}){
        Text("Title").fontSize(25).fontWeight(FontWeight.Bolder).width('70%');
        Text("SubText goes here SubText here here here herehere").fontSize(15).fontWeight(FontWeight.Bold).width('70%');
      }
    }.borderWidth(this.model.borderWidth).borderRadius(10).height(90).margin({bottom: 20}).width(320).backgroundColor('#ffffc6');
  }
}

