
import {Elevated} from './Elevated'

@Component

export struct ElevatedCard {

  model: Elevated.Model = new Elevated.Model()
  gridString : string = ''
  aboutToAppear(){
    for (var index = 0; index < Math.floor((this.model.numberOfSubtitleButton-1)/3)+1; index++) {
      this.gridString+='1fr '
    }
  }
  build() {
      Column() {
        if (this.model.cardImageType == 'top') {
          Image($r("app.media.brave"))
            .objectFit(ImageFit.Cover)
            .width(this.model.cardImageWidth)
            .height(this.model.cardImageHeight)
            .margin(16)
            .borderWidth(this.model.cardImageBorderWidth)
            .borderColor(this.model.cardImageBorderColor)
        }
        Row() {
          if (this.model.cardTitleImage == 'left') {
            Image($r("app.media.disneylogo"))
              .objectFit(ImageFit.Cover)
              .width(80)
              .height(80)
              .padding({ left: 16, top: 16 })
              .borderRadius(8)
          }
          Column() {
            if (this.model.needOver) {
              Text(this.model.overLineText)
                .fontSize(15)
                .fontWeight(FontWeight.Bold)
                .padding({ top: 16, left: 16 })
                .alignSelf(ItemAlign.Start)
            }
            Text(this.model.titleText)
              .fontSize(25)
              .fontWeight(FontWeight.Bolder)
              .padding({ left: 16 })
              .alignSelf(ItemAlign.Start)
            if (this.model.needSecondaryText) {
              Text(this.model.secondaryText)
                .fontSize(this.model.secondaryTextFontSize)
                .fontWeight(FontWeight.Normal)
                .padding({ left: 16 })
                .alignSelf(ItemAlign.Start)
            }
            if (this.model.cardTitleImage == 'right') {
              Image($r("app.media.disneylogo"))
                .objectFit(ImageFit.Cover)
                .width(80)
                .height(80)
                .padding({ left: 16, top: 16 })
            }
          }.width('74%')
        }.width(this.model.cardWidth)
        .alignSelf(ItemAlign.Start)

        if (this.model.cardImageType == 'middle') {
          Image($r("app.media.brave"))
            .objectFit(ImageFit.Cover)
            .width(this.model.cardImageWidth)
            .height(this.model.cardImageHeight)
            .margin(16)
            .borderWidth(this.model.cardImageBorderWidth)
            .borderColor(this.model.cardImageBorderColor)
        }
        Row() {
          if (this.model.needSubText) {
            Text(this.model.subText)
              .fontSize(this.model.subTextFontSize)
              .fontWeight(FontWeight.Medium)
              .margin(16)
              .alignSelf(ItemAlign.Start)
          }
        }

        if (this.model.needSubTitle) {
          Divider().margin(8).strokeWidth(1)
          Column() {
            Text('Subtitle')
              .margin({ top: 16, left: 16, bottom: 8 })
              .fontWeight(FontWeight.Bold)
              .fontSize(22)
              .alignSelf(ItemAlign.Start)
            Grid() {
              ForEach(this.model.buttonArray, (item) => {
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
            .height(100)
            .columnsGap(5)
          }.width(this.model.cardWidth)
        }
        Row() {
          //      if(this.model.action1!=undefined) {
          //        Button(this.model.action1.buttonText, { type: this.model.action1.buttonType,
          //                                                stateEffect: true })
          //          .backgroundColor(this.model.action1.buttonColor)
          //          .width(this.model.action1.buttonWidth)
          //          .margin({ left: 8, top: 16, bottom: 16 })
          //          .height(this.model.action1.buttonHeight)
          //          .fontColor(this.model.action1.buttonTextColor)
          //          .fontSize(this.model.action1.fontSize)
          //      }
          if (this.model.action1.isText) {
            Text(this.model.action1.buttonText)
              .fontColor(this.model.action1.buttonTextColor)
              .fontSize(this.model.action1.fontSize)
              .fontWeight(FontWeight.Bold)
              .margin({ left: 8, top: 16, bottom: 16 })
          }
          else {
            Button(this.model.action1.buttonText, { type: ButtonType.Capsule, stateEffect: true })
              .backgroundColor(0x317aff)
              .width(90)
              .margin({ left: 8, top: 16, bottom: 16 })
          }
          if (this.model.action2.isText) {
            Text(this.model.action2.buttonText)
              .fontColor(this.model.action2.buttonTextColor)
              .fontSize(this.model.action2.fontSize)
              .fontWeight(FontWeight.Bold)
              .margin({ left: 8, top: 16, bottom: 16 })
          }
          else {
            Button(this.model.action2.buttonText, { type: ButtonType.Capsule, stateEffect: true })
              .backgroundColor(0x317aff)
              .width(90)
              .margin({ left: 8, top: 16, bottom: 16 })
          }
        }.width(this.model.cardWidth).justifyContent(FlexAlign.Start)

        if (this.model.cardImageType == 'bottom') {
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