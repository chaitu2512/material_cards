// @ts-nocheck
import {button} from './button'
export namespace Elevated {
    export class Model {
        srcImagePath: string = undefined
        cardImageType: string = 'top'
        cardTitleImage: string = 'left'
        needOverLine : boolean = true
        needBorder: boolean = true
        borderWidth: number = 4
        borderColor: string = '#ffc86d6d'
        cardWidth: number = 344
        cardHeight: number = 600
        titleText: string = 'BRAVE'
        subText: string = 'SubText goes here SubText goes here SubText ' +
          'goes here SubText goes here SubText goes here SubText goes here'
        subTextFontSize : number = 15
        secondaryTextFontSize : number = 15
        subTitleText :string = 'Subtitle'
        overLineText :string = 'OVERLINE'
        secondaryText : string = 'Secondary Text'
        textFontSize: number = 25
        subTextFontSize: number = 15
        backGroundColor: string = '#ffffcbcb'
        borderRadius: number = 10
        bottomMargin: number = 20
        imagePosition: string = 'left'
        needAction1 : boolean =true
        needAction2 : boolean =true
        needSecondaryText : boolean =true
        needSubText : boolean = true
        action1: button.Model = undefined
        action2: button.Model = undefined
        needOver : boolean = false
        needSubTitle : boolean = true
        buttonArray : button.Model[] = []
    }
}
