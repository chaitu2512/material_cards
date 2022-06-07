// @ts-nocheck
export namespace Elevated {
    export class Model {
        srcImagePath: string = undefined
        cardImageType: string = 'top'
        cardTitleImage: string = 'left'
        needOverLine : boolean = false
        needBorder: boolean = false
        borderWidth: number = 2
        borderColor: string = '#000000'
        cardWidth: number = 344
        cardHeight: number = 90
        titleText: string = 'Title'
        subText: string = 'SubText goes here SubText goes here SubText ' +
          'goes here SubText goes here SubText goes here SubText goes here'
        subTextFontSize : number = 15
        secondaryTextFontSize : number = 15
        subTitleText :string = 'Subtitle'
        overLineText :string = 'OVERLINE'
        secondaryText : string = 'Secondary Text'
        textFontSize: number = 25
        subTextFontSize: number = 15
        backGroundColor: string = '#ff64e3b0'
        borderRadius: number = 10
        bottomMargin: number = 20
        imagePosition: string = 'left'
        needAction1 : boolean =true
        needAction2 : boolean =true
        needSecondaryText : boolean =true
        needSubText : boolean =true
        action1: string = undefined
        action2: string = undefined
        needOver : boolean = true
        actionButtonWidth : number = 90
        subTitleItemButtonWidth : number =90
        subTitleItems : string
    }
}
